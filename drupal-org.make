; This file was auto-generated by drush make
core = 7.x
api = 2

defaults[projects][subdir] = "contrib"

; Contrib modules

projects[admin_menu][version] = "3.0-rc4"

projects[admin_views][version] = "1.2"

projects[bean][version] = "1.5"

projects[bean_panels][version] = "1.3"

projects[ccl][version] = "1.5"

projects[chosen][version] = 2.0-alpha2
projects[chosen][patch][] = https://drupal.org/files/2021639-pin-chosen-26.patch

projects[context][version] = "3.2"

projects[ctools][version] = "1.4"

projects[crumbs][version] = "2.0-beta19"

projects[date][version] = "2.8"

projects[draggableviews][version] = "2.0"

projects[ds][version] = "2.6"

projects[entity][version] = "1.5"
projects[entity][patch][2307807] = https://www.drupal.org/files/issues/2307807-entity-reset-insert-1.patch

projects[entitycache][download][type] = "git"
projects[entitycache][download][revision] = 7e390b5d4112b581ac2885d8bd0f2cb5ce873284
projects[entitycache][download][branch] = 7.x-1.x
projects[entitycache][type] = "module"

projects[features][version] = 2.2

projects[file_entity][version] = "2.0-alpha3"

projects[globalredirect][version] = "1.5"

projects[google_analytics][version] = "2.0"

projects[honeypot][version] = "1.14"

projects[libraries][version] = "2.1"

projects[link][version] = "1.1"

projects[linkchecker][version] = "1.2"

projects[linkit][version] = "3.1"

projects[media][version] = "2.0-alpha1"
projects[media][patch][] = "https://drupal.org/files/media.media-browser.1956620-10.patch"
projects[media][patch][] = "https://drupal.org/files/media.code_.1701914-2.patch"

projects[media_vimeo][version] = "2.0"

projects[media_youtube][version] = "2.0-rc4"

projects[menu_attributes][version] = "1.0-rc2"

projects[menu_block][version] = "2.3"

projects[menu_trail_by_path][version] = "2.0"

projects[metatag][version] = "1.4"
projects[metatag][patch][] = "https://www.drupal.org/files/issues/support-all-attributes-1970362.pass_.patch"

projects[references][version] = "2.1"

projects[panels][version] = "3.4"

projects[paranoia][version] = "1.3"

projects[password_policy][version] = "1.9"

projects[pathauto][version] = "1.2"

projects[pathauto_persist][version] = "1.3"

projects[r4032login][version] = "1.5"

projects[redirect][version] = "1.0-rc1"
projects[redirect][patch][] = "https://www.drupal.org/files/issues/redirect.circular-loops.1796596-172.patch"

projects[simple_aggregation][version] = "1.0"

projects[scheduler][version] = "1.1"

projects[scheduler_workbench][version] = "1.2"

projects[search404][version] = "1.3"

projects[seckit][version] = "1.9"

projects[site_map][version] = "1.0"
projects[site_map][patch][] = "https://drupal.org/files/accessibility_enhancements-1920722-2.patch"

projects[strongarm][version] = "2.0"

projects[superfish][version] = "1.9"

projects[token][version] = "1.5"

projects[twitter_block][version] = "2.1"

projects[username_enumeration_prevention][version] = "1.0"

projects[view_unpublished][download][type] = "git"
projects[view_unpublished][download][url] = "http://git.drupal.org/project/view_unpublished.git"
projects[view_unpublished][download][revision] = e9df1d3f33b93410bb62e65f70981286db2007bd
projects[view_unpublished][download][branch] = "7.x-1.x"
projects[view_unpublished][type] = "module"

projects[views][version] = "3.8"

projects[views_bulk_operations][version] = "3.1"

projects[webform][version] = "4.1"

projects[webform_clear][version] = "2.0"

projects[workbench][version] = "1.2"

projects[xmlsitemap][version] = "2.0-rc2"

; Patched modules
projects[defaultconfig][version] = "1.0-alpha9"
projects[defaultconfig][patch][] = "https://drupal.org/files/1940366-1-illegal-offset-warning.patch"

projects[defaultcontent][version] = "2.x-dev"
projects[defaultcontent][patch][] = "https://drupal.org/files/1611928-fix-alt.patch"
projects[defaultcontent][patch][] = "https://drupal.org/files/1757782-cannot-import-menu-hierarchy-8.patch"
projects[defaultcontent][patch][] = "https://drupal.org/files/1896232-defaultcontent-nid.patch"

projects[search_config][version] = "1.0"

projects[securepages][version] = "1.0-beta1"

projects[uuid][version] = "1.0-alpha4"

projects[workbench_moderation][version] = "1.3"

projects[wysiwyg][version] = "2.2"
projects[wysiwyg][patch][] = "https://drupal.org/files/1954910-wysiwyg-empty-after-installation_fixed.patch"
projects[wysiwyg][patch][] = "https://drupal.org/files/wysiwyg-857362-selection-bookmarking.patch"

projects[wysiwyg_filter][version] = "1.6-rc2"

projects[image_link_formatter][version] = "1.0"

; Included, but disabled modules

projects[flood_control][version] = "1.0"

projects[login_security][version] = "1.4"

; Themes
projects[zen][version] = "5.5"

; PreviousNext modules
projects[agls][version] = "1.0-beta3"

; Libraries

libraries[superfish][download][type] = "get"
libraries[superfish][download][url] = "https://github.com/mehrpadin/Superfish-for-Drupal/archive/1.x.zip"
libraries[superfish][directory_name] = "superfish"
libraries[superfish][type] = "library"

libraries[html5placeholder][download][type] = "get"
libraries[html5placeholder][download][url] = "https://github.com/mathiasbynens/jquery-placeholder/archive/v2.0.8.zip"
libraries[html5placeholder][directory_name] = "html5placeholder"
libraries[html5placeholder][type] = "library"

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.2/ckeditor_3.6.6.2.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][type] = "library"
