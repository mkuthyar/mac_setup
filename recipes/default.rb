#
# Cookbook:: mac_setup
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# To execute recipe in local mode, clone down the cookbook and run: chef-client -z -o 'recipe[mac_setup::default]'

include_recipe 'mac_setup::bash_profile'
include_recipe 'mac_setup::software_installs'
