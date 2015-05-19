bash "install_RVM" do 
  code <<-EOH
  curl -sSL https://rvm.io/mpapis.asc | sudo gpg --import
  curl -L get.rvm.io | bash -s stable
  EOH
end

# chef_gem 'rvm' do
#   action :install
#   version '>= 1.11.3.6'
# end

# directory "/.rvm" do
#   owner 'root'
#   group 'root'
#   mode '0755'
# end

# bash "export_path" do
#   code <<-EOH
#   export PATH="PATH:/usr/local/rvm/gems/ruby-2.2.1/bin"
#   EOH
# end

# rvm_string = '"$HOME/.rvm/scripts/rvm"'

# file ".profile" do
#   owner 'root'
#   group 'root'
#   mode '0755'
#   content "[[ -s #{rvm_string} ]] && source #{rvm_string}"
# end
# bash "add_rvm_function_to_profile" do
#   code <<-EOH
#   echo [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" >> ~/.profile
#   EOH
# end

# bash "source_profile" do 
#   code <<-EOH
#   source ~/.profile
#   EOH
# end

# bash "install ruby 2.1.1" do
#   code <<-EOH
#   rvm install ruby 2.1.1
#   EOH
# end

# bash "set ruby 2.1.1" do
#   code <<-EOH
#   rvm use 2.1.1
#   EOH
# end
