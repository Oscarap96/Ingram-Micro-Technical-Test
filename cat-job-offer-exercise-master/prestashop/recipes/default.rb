#
# Cookbook:: prestashop
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Install Docker
docker_service 'default' do
  action :create
end

# Pull latest image of Prestashop
docker_image 'prestashop/prestashop' do
  tag 'latest'
  action :pull
end

# Run the Prestashop container making it reachable through the port 8080
docker_container 'my_prestashop' do
  repo 'prestashop/prestashop'
  tag 'latest'
  port '8080:80'
end