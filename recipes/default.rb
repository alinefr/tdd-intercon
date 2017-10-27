#
# Cookbook:: intercon
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Service docker installed, enabled and running.
docker_service 'default' do
  action [:create, :start]
end

# docker container running with nginx image.
include_recipe 'docker_compose::installation'

directory '/srv/docker/hello_world/html' do
  recursive true
end

cookbook_file '/srv/docker/hello_world/docker-compose.yml' do
  source 'docker-compose.yml'
end

docker_compose_application 'nginx' do
  action :up
  compose_files ['/srv/docker/hello_world/docker-compose.yml']
end

# Serve html page containing Hello World.
cookbook_file '/srv/docker/hello_world/html/index.html' do
  source 'index.html'
end
