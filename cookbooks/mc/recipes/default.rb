#
# Cookbook Name:: mc
# Recipe:: default
#
# Copyright 2014, Daida
#
# All rights reserved - Do Not Redistribute
#

# Installs Midnight Commander
case node['platform_family']
when 'rhel', 'fedora', 'suse'
	yum_package node["package_name"] do
		action :install
	end
when 'debian'
	package node["package_name"] do
		action :install
	end
#when 'arch'
#	default["package_name"] = "mc"
#when 'freebsd'
#	default["package_name"] = "mc"
end
