bash "update apt" do
  code "sudo apt-get update"
end

package ["curl", "vim", "git", "git-flow", "memcached", "unzip"] do 
  action :install 
end
