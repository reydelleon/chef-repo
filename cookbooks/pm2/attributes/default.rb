default['pm2']['version'] = '0.5.7'
default['node-gyp']['version'] = '0.10.6'

case node['platform_family']
	when 'debian'
		default['pm2']['init_script'] = 'ubuntu'
	when 'rhel', 'fedora', 'suse'
		default['pm2']['init_script'] = 'centos'
	end