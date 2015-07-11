#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
rpmfile = "nginx-release-centos-6-0.el6.ngx.noarch.rpm"

cookbook_file "/tmp/#{rpmfile}" do 
  mode 00644
  checksum "4ee9cb15f3ad5c3bea4909bf8863983af4089484f50c1cdb94559016ea9fd244"
end

package "nginx-release-centos" do 
  action :install
  source "/tmp/#{rpmfile}"
end

package "nginx" do 
  action :install
end

service "nginx" do 
  supports :status => true,
           :restart => true,
           :reload => true
  action [ :enable, :start ]
end

template "nginx.conf" do 
  path "/etc/nginx/nginx.conf"
  source "nginx.conf.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :reload, 'service[nginx]'
end
