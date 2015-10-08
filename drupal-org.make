; This file was auto-generated by drush make
core = 8.x
api = 2

defaults[projects][subdir] = "contrib"

; Contrib modules
projects[layout_plugin][type] = module
projects[layout_plugin][download][type] = git
projects[layout_plugin][download][url] = http://git.drupal.org/project/layout_plugin.git
projects[layout_plugin][download][branch] = 8.x-1.x
projects[layout_plugin][download][revision] = ecea017eaf546e942ef608f3e98b0067e350d5db
projects[layout_plugin][subdir] = 'contrib'
projects[layout_plugin][patch][] = block-page-layout.patch

projects[page_manager][type] = module
projects[page_manager][download][type] = git
projects[page_manager][download][url] = http://git.drupal.org/project/page_manager.git
projects[page_manager][download][branch] = 8.x-1.x
projects[page_manager][download][revision] = 91f13f592f60d46177a0eeff56c1ae7c5bbd229e
projects[page_manager][subdir] = 'contrib'
; See https://www.drupal.org/node/2391925#comment-10390651
projects[page_manager][patch][] = https://www.drupal.org/files/issues/2391925-19.patch

projects[ctools][type] = module
projects[ctools][download][type] = git
projects[ctools][download][url] = http://git.drupal.org/project/ctools.git
projects[ctools][download][branch] = 8.x-3.x
projects[ctools][download][revision] = 45fbd1389384e57b8e68fc1fd944dd95a8a105a1
projects[ctools][subdir] = 'contrib'

projects[file_entity][type] = module
projects[file_entity][download][type] = git
projects[file_entity][download][url] = https://github.com/md-systems/file_entity.git
projects[file_entity][download][branch] = 8.x-2.x
projects[file_entity][download][revision] = 07a7803899ac3b3c59ab2f30e7542b5ec0283516

b25a5fd94e44b716c979e533b869a8d2da47e27b

projects[file_entity][subdir] = 'contrib'

projects[twitter_block][type] = module
projects[twitter_block][download][type] = git
projects[twitter_block][download][url] = http://git.drupal.org/sandbox/sam/2572433.git
projects[twitter_block][download][branch] = 8.x-1.x
projects[twitter_block][subdir] = 'contrib'

projects[linkicon][subdir] = 'contrib'
projects[linkicon][version] = '1.1'

projects[title][subdir] = 'contrib'
projects[title][version] = '2.x'

projects[fences][subdir] = 'contrib'
projects[fences][version] = '2.x'

; aGov

; Themes

; Libraries

; Development Modules
projects[config_devel][version] = '1.0-beta16'
projects[config_devel][subdir] = 'development'

projects[default_content][type] = module
projects[default_content][download][type] = git
projects[default_content][download][url] = http://git.drupal.org/project/default_content.git
projects[default_content][download][branch] = 8.x-1.x
projects[default_content][download][revision] = 80fb60de4d7adf28abf8efedc9bcbabd148dec1d
projects[default_content][subdir] = 'development'
