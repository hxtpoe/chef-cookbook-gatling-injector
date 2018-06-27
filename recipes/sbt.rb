#
# Cookbook:: injector
# Recipe:: sbt
#
# Copyright:: 2018, The Authors, All Rights Reserved.

yum_repository 'bintray--sbt-rpm' do
  description "bintray--sbt-rpm"
  baseurl "https://sbt.bintray.com/rpm"
  action :create
  gpgcheck false
end

yum_package 'sbt' do
  version    '1.0.0'
  allow_downgrade true
end
