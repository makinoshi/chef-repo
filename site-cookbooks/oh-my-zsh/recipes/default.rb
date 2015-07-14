#
# Cookbook Name:: oh-my-zsh
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "install oh-my-zsh" do
  user "vagrant"
  group "vagrant"
  cwd "/home/vagrant"
  environment "HOME" => '/home/vagrant'
  code <<-EOC
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  EOC
end
