# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "reydelleon"
client_key               "#{current_dir}/reydelleon.pem"
validation_client_name   "daida-validator"
validation_key           "#{current_dir}/daida-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/daida"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

# AWS credentials
knife[:aws_access_key_id] = 'ACCESS_KEY_ID'
knife[:aws_ssh_key_id] = 'Node Server'
knife[:aws_secret_access_key] = 'SECRET_ACCESS_KEY'
