case node['platform_family']
when 'rhel', 'fedora', 'suse'
	default["package_name"] = "mc.x86_64"
when 'debian'
	default["package_name"] = "mc"
#when 'arch'
#	default["package_name"] = "mc"
#when 'freebsd'
#	default["package_name"] = "mc"
end