bash "set_java_path" do 
	code <<-EOH
	export GRAILS_HOME="/Applications/grails-2.4.4"
	export JAVA_HOME="/usr/lib/jvm/java-8-oracle-amd64"
	source ~/.profile
	EOH
end