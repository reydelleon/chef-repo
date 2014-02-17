#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#Install Apache

package "nginx" do
	action :install
end

# Start apache service
# Make sure the service starts with the server
service "nginx" do
	action [:start, :enable]
end

# Write our Home Page
cookbook_file "/var/www/index.html" do
	source "index.html"
	mode "0644"
end

