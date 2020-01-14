#
# Cookbook:: chef-basics
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# imports
include_recipe 'apt'
include_recipe 'nodejs'

# packages apt-get
apt_update
package 'nginx'
package 'npm'

# npm installs
nodejs_npm 'pm2'

# services
service 'nginx' do
  supports status: true, restart: true, reload: true
  action [:enable, :start]
end
