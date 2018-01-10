#!/usr/bin/make -f

APP_ROOT=./app
APP_URL=http://127.0.0.1
APP_PASSWORD=password
DB_URL=mysql://drupal:drupal@127.0.0.1/local

BUILD_LOGS_DIR=./build/logs

DRUSH=./bin/drush -r $(APP_ROOT) -l $(APP_URL)
EXPORT_MODULES=agov agov_standard_page agov_article agov_publication agov_default_content agov_password_policy agov_scheduled_updates agov_media agov_social_icons
COMPOSER=composer

.DEFAULT_GOAL := list

default: list;

build: clean init mkdirs link-profile install devify

list:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1n}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'

clean:
	chmod +w $(APP_ROOT)/sites/default
	rm -rf $(APP_ROOT)

init:
	$(COMPOSER) install --prefer-dist --no-progress --no-suggest --no-interaction --optimize-autoloader

devify:
	chmod -R +w app/sites/default
	$(DRUSH) en config_devel simpletest -y

mkdirs:
	mkdir -p $(APP_ROOT)/profiles/agov $(APP_ROOT)/sites/default/files/tmp $(APP_ROOT)/sites/default/private build/logs/simpletest app/sites/simpletest/browser_output

link-profile:
	cd $(APP_ROOT)/profiles/agov && ln -svf ../../../agov.* ../../../config ../../../modules ../../../src ../../../tests .

install:
	$(DRUSH) site-install agov --site-name=aGov --account-pass='${APP_PASSWORD}' --db-url=${DB_URL} install_configure_form.enable_update_status_module=NULL -y

config-export:
	$(DRUSH) config-devel-export ${EXPORT_MODULES}

sql-drop:
	$(DRUSH) sql-drop -y

db-dump:
	mkdir mariadb-init
	$(DRUSH) sql-dump > mariadb-init/db.sql

updb:
	$(DRUSH) updb -y

entity-updates:
	$(DRUSH) entity-updates -y

cache-rebuild:
	$(DRUSH) cr

fix-php:
	./bin/phpcbf --report=full

lint: phpcs composer-validate

phpcs:
	./bin/phpcs --report=full

composer-validate:
	composer validate --no-check-all --ansi --no-interaction

psalm:
	./bin/psalm --show-info=0

ci-lint-php: ci-prepare psalm
	rm -rf $(BUILD_LOGS_DIR)/checkstyle.xml
	./bin/phpcs --report=checkstyle --report-file=$(BUILD_LOGS_DIR)/checkstyle.xml --standard=vendor/drupal/coder/coder_sniffer/Drupal/ruleset.xml --extensions=$(PHPCS_EXTENSIONS) $(PHPCS_FOLDERS)

test-ci:
	mkdir -p $(APP_ROOT)/sites/simpletest
	-export SIMPLETEST_BASE_URL="http://127.0.0.1";export SIMPLETEST_DB="mysql://drupal:drupal@localhost/local";./bin/phpunit -c app/core app/modules/custom --log-junit $(BUILD_LOGS_DIR)/phpunit/phpunit.xml
	# One remaining legacy Simpletest that is dependent on InstallerTestBase.
	sudo -u www-data ${CIRCLE_PHP} ./app/core/scripts/run-tests.sh --url ${APP_URI} --sqlite /tmp/test-db.sqlite --dburl sqlite://127.0.0.1//tmp/test-db.sqlite --class 'Drupal\agov\Tests\ConfigurableDependenciesTest'

test: test-phpunit

test-phpunit:
	./bin/phpunit $(APP_ROOT)/profiles/agov/tests --log-junit $(BUILD_LOGS_DIR)/phpunit/phpunit.xml

test-simpletest:
	$(DRUSH) en simpletest -y
	mkdir -p $(APP_ROOT)/sites/default/files/simpletest
	chown -R www-data:www-data $(APP_ROOT)/sites/default/files
	chmod -R 775 $(APP_ROOT)/sites/default/files
	gosu www-data:www-data bash -c "php ./app/core/scripts/run-tests.sh  --browser --verbose --url ${APP_URL} --dburl '$(DB_URL)' --class 'Drupal\agov\Tests\ConfigurableDependenciesTest'"

test-init:
	touch $(APP_ROOT)/test-output.html;
	chmod 777 $(APP_ROOT)/test-output.html;
	echo "create database d8_testing;" | sudo mysql

login:
	$(DRUSH) uli

patchy:
	echo '[PATCHY] Update composer dependencies\n\n' > /tmp/message.txt
	composer install --prefer-dist --no-interaction --no-progress --no-suggest
	composer show > /tmp/before.txt
	composer update --with-dependencies --prefer-dist --no-interaction --no-progress --no-suggest
	composer show > /tmp/after.txt
	git diff -U0 --word-diff --no-index -- /tmp/before.txt /tmp/after.txt | grep -v ^@@ | tail -n +5 >> /tmp/message.txt
	git add composer.json composer.lock
	git commit -F /tmp/message.txt
	$(DRUSH) updb -y
	$(DRUSH) entity-updates -y
	$(DRUSH) cexy -y --destination=$(CONFIG_DIR) --ignore-list=$(CONFIG_IGNORE)
	git add config-export
	git commit -m "[PATCHY] Update config"

.PHONY: list build init mkdirs sql-drop updb entity-updates cache-rebuild styleguide db-sync config-import config-export phpcbf phpcs ci-lint-php ci-prepare ci-test test test-init login default patchy install
