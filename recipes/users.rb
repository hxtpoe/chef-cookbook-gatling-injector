#
# Cookbook:: injector
# Recipe:: users
#
# Copyright:: 2018, The Authors, All Rights Reserved.

users_manage "gatling" do
   group_id 1139
   action [ :create ]
 end
