#
# Cookbook Name:: nginx_logrotate
# Recipe:: default
#

Chef::Log.info "Starting to update nginx logrotate file."

remote_file "/etc/logrotate.d/nginx" do 
  owner "root" 
  group "root" 
  mode 0755 
  source "nginx.logrotate" 
  backup false 
  action :create 
end 

Chef::Log.info "End of updating nginx logrotate file."
