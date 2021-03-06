bash "hosts_entry" do
	code "echo '127.0.0.1 local.amplify.com' | sudo tee -a /etc/hosts"
end

# # WHY AREN'T YOU WORKING? :(
# hostsfile_entry '127.0.0.1' do
#   hostname  'local.amplify.com'
#   action    :create_if_missing
# end

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
