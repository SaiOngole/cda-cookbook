source "https://supermarket.chef.io"

metadata

cookbook 'hostsfile', '~> 2.4.5'
cookbook 'java', '~> 1.31.0'
cookbook 'rvm', :git => 'git://github.com/fnichol/chef-rvm.git', :ref => '24ecbb0'

group :ruby do
  cookbook 'ruby_build'
  cookbook 'rbenv', git: 'https://github.com/fnichol/chef-rbenv'
end
