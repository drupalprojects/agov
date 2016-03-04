; This file was auto-generated by drush make
core = 8.x
api = 2

defaults[projects][subdir] = "contrib"

; Contrib modules

projects[layout_plugin][version] = 1.0-alpha22
projects[layout_plugin][subdir] = contrib

projects[panels][version] = 3.0-beta2
projects[panels][subdir] = contrib

projects[ctools][version] = 3.0-alpha22
projects[ctools][subdir] = contrib

projects[twitter_block][version] = 2.0
projects[twitter_block][subdir] = contrib

projects[linkicon][subdir] = 'contrib'
projects[linkicon][version] = '1.2'

projects[pathauto][subdir] = 'contrib'
projects[pathauto][version] = '1.0-alpha1'

projects[token][subdir] = 'contrib'
projects[token][version] = '1.0-alpha2'

projects[password_policy][subdir] = 'contrib'
projects[password_policy][version] = '3.0-alpha2'

projects[workbench_moderation][subdir] = 'contrib'
projects[workbench_moderation][version] = '1.0-alpha2'

projects[metatag][subdir] = 'contrib'
projects[metatag][version] = '1.x-dev'

projects[agls][subdir] = 'contrib'
projects[agls][version] = '1.x-dev'

projects[scheduled_updates][subdir] = 'contrib'
projects[scheduled_updates][version] = '1.0-alpha5'

projects[inline_entity_form][subdir] = 'contrib'
projects[inline_entity_form][version] = '1.0-alpha3'

projects[simple_sitemap][version] = '2.1'
projects[simple_sitemap][patch][] = https://www.drupal.org/files/issues/2680953-simple-sitemap-schema.patch


; Development versions

projects[file_entity][type] = module
projects[file_entity][download][type] = git
projects[file_entity][download][url] = https://git.drupal.org/project/file_entity.git
projects[file_entity][download][branch] = 8.x-2.x
projects[file_entity][download][revision] = af4131334c88a7e7bd045874070c79b9af7d842d

projects[page_manager][type] = module
projects[page_manager][download][type] = git
projects[page_manager][download][url] = http://git.drupal.org/project/page_manager.git
projects[page_manager][download][branch] = 8.x-1.x
projects[page_manager][download][revision] = 8fa43f74d8ddb6d45f19de536ac61c9a8aea4946
projects[page_manager][subdir] = 'contrib'
; https://www.drupal.org/node/2601004
projects[page_manager][patch][] = https://www.drupal.org/files/issues/page-manager-contextual-temp.patch

projects[title][type] = module
projects[title][download][type] = git
projects[title][download][url] = http://git.drupal.org/project/title.git
projects[title][download][branch] = 8.x-2.x
projects[title][download][revision] = b163e2d50b3add3842ac67ea11cced5eb5d7ceaf
projects[title][subdir] = 'contrib'

projects[fences][type] = module
projects[fences][download][type] = git
projects[fences][download][url] = http://git.drupal.org/project/fences.git
projects[fences][download][branch] = 8.x-2.x
projects[fences][download][revision] = 17e56ed95b358544e0a93a37b819793234f7876e
projects[fences][subdir] = 'contrib'

; aGov

; Themes

; Libraries

; Development Modules
projects[config_devel][version] = '1.0-rc1'
projects[config_devel][subdir] = 'development'

projects[default_content][type] = module
projects[default_content][download][type] = git
projects[default_content][download][url] = http://git.drupal.org/project/default_content.git
projects[default_content][download][branch] = 8.x-1.x
projects[default_content][download][revision] = 471bf110e40e22b8a5ed10973825959aa33b2f21
projects[default_content][subdir] = 'development'
