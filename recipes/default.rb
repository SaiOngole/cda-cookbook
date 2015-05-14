#
# Cookbook Name:: cda-cookbook
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "update apt" do
	code "sudo apt-get update"
end

package ["curl","vim","git","git-flow","memcached"] do 
	action :install
	
end


bash "hosts_entry" do
	code "echo '127.0.0.1 local.amplify.com' | sudo tee -a /etc/hosts"
end