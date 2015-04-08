#
# Cookbook Name:: create
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'httpd'

service 'httpd' do
  action :start
end

template '/etc/httpd/conf.d/serverlimit.conf' do
  user 'root'
  group 'root'
  mode '0644'
  notifies :restart 'service[httpd]'
end


