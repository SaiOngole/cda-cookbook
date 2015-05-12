bash "install_GVM" do 
	code <<-EOH
	curl -s get.gvmtool.net | bash
	EOH
end

bash "compile_source" do
	cwd "/home/vagrant/.gvm"
	code <<-EOH
	source "bin/gvm-init.sh"
	# Huge issue down here. Should not go into production.
	sudo chmod -R 777 ~/.gvm 
	EOH
end