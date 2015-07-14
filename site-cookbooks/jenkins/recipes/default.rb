#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not redistribute
#
bash "install-jenkins-rpm" do 
  code <<-EOC
    wget -O /tmp/jenkins-1.620-1.1.noarch.rpm http://pkg.jenkins-ci.org/redhat/jenkins-1.620-1.1.noarch.rpm
    sudo rpm -Uvh /tmp/jenkins-1.620-1.1.noarch.rpm
  EOC
end

service "jenkins" do 
  supports :start => true,
           :restart => true,
           :reload => true
  action [ :enable, :start ]
end
