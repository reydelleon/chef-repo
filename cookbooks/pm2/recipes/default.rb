#
# Cookbook Name:: pm2
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# Installs pm2 from source
execute "npm install pm2@latest -g" do
  command "npm install pm2@latest -g"
  #cwd "/usr/local/src/node-v#{node['nodejs']['version']}"
  #not_if {::File.exists?("#{node['nodejs']['dir']}/bin/node") && `#{node['nodejs']['dir']}/bin/node --version`.chomp == "v#{node['nodejs']['version']}" }
end

execute "pm2 startup centos" do
  command "pm2 startup centos"
  #cwd "/usr/local/src/node-v#{node['nodejs']['version']}"
  #not_if {::File.exists?("#{node['nodejs']['dir']}/bin/node") && `#{node['nodejs']['dir']}/bin/node --version`.chomp == "v#{node['nodejs']['version']}" }
end