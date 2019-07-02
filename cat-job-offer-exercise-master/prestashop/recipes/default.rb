#
# Cookbook:: prestashop
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Install Docker
docker_service 'default' do
  action :create
end