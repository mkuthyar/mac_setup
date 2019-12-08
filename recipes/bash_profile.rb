#
# Cookbook:: mac_setup
# Recipe:: bash_profile
#
# Copyright:: 2019, The Authors, All Rights Reserved.
template '/Users/mihirkuthyar/.bash_profile' do
  source 'bash_profile.erb'
  action :create
end
