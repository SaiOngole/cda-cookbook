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

package ["curl","vim","git","git-flow","memcached","unzip"] do 
	action :install
	
end


bash "hosts_entry" do
	code "echo '127.0.0.1 local.amplify.com' | sudo tee -a /etc/hosts"
end

remote_file "/tmp/grails.zip" do
	source "https://github.com/grails/grails-core/releases/download/v2.4.4/grails-2.4.4.zip"
	mode '0644'
end

directory "Applications" do
	owner "root"
	group "root"
	mode '0777'
	action :create
end

bash "move_grails" do
	cwd "/tmp"
	code <<-EOH
	unzip grails.zip
	mv /tmp/grails-2.4.4 /Applications
	ln -s /Applications/grails-2.4.4/bin/grails /usr/bin/grails
	EOH
end