name 'injector'
maintainer 'The Authors'
maintainer_email 'hxtpoe@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures injector'
long_description 'Installs/Configures injector'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

source_url 'https://github.com/hxtpoe/chef-cookbook-gatling-injector'
issues_url 'https://github.com/hxtpoe/chef-cookbook-gatling-injector/issues'

depends 'limits'
depends 'users'