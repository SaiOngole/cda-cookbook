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

package ["curl","vim","git","ruby","rubygems"] do 
	action :install
	
end