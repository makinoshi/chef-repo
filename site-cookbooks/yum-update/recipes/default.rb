#
# Cookbook Name:: yum-update
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "yum-fastestmirror" do 
  action :install
end

execute "yum-update" do 
  user "root"
  command "yum -y update"
  action :run
end
