bash "install_GVM" do 
	code <<-EOH
	curl -s get.gvmtool.net | bash
	EOH
end

directory "/.gvm" do
  owner 'root'
  group 'root'
  mode '0755'
end

bash "compile_source" do
	cwd "/home/vagrant/.gvm"
	code <<-EOH
	source "bin/gvm-init.sh"
	EOH
end
