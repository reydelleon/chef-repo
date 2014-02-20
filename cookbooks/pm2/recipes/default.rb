#
# Cookbook Name:: pm2
# Recipe:: default
#
# Copyright 2014, Daida
#
# All rights reserved - Do Not Redistribute
#
# Installs node-gyp using npm
execute "npm install node-gyp@#{node['node-gyp']['version']}" do
	cwd "/usr/local/lib/node_modules/npm"
	command "npm install node-gyp@#{node['node-gyp']['version']}"
	#not_if {::File.exists?("#{node['nodejs']['dir']}/bin/node") && `#{node['nodejs']['dir']}/bin/node --version`.chomp == "v#{node['nodejs']['version']}" }
end

# Installs pm2 v0.5.7 using npm
execute "npm install pm2@#{node['pm2']['version']} -g" do
	cwd "/root"
	command "npm install pm2@#{node['pm2']['version']} -g"
	#not_if {::File.exists?("#{node['nodejs']['dir']}/bin/node") && `#{node['nodejs']['dir']}/bin/node --version`.chomp == "v#{node['nodejs']['version']}" }
end

# Generate init script for ubuntu/centos to keep processes alive on restart
execute "pm2 startup #{node['pm2']['init_script']}" do
  command "pm2 startup #{node['pm2']['init_script']}"	
end