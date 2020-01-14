#
# Cookbook:: chef-basics
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# imports
include_recipe 'nodejs'
include_recipe 'apt'

# npm installs
nodejs_npm 'pm2'

# packages apt-get
apt_update
package 'nginx'

# services
service 'nginx' do
#  supports status: true, restart: true, reload: true
  action [:enable, :start]
end
