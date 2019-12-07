#
# Cookbook:: mac_setup
# Recipe:: software_installs
#
# Copyright:: 2019, The Authors, All Rights Reserved.

## Install/Update HomeBrew for package management
execute 'homebrew install' do
  command '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
end

execute 'homebrew update' do
  command 'brew update'
end

## Install software package with homebrew and cask
%w(vagrant virtualbox java atom).each do |pkg|
  homebrew_cask pkg do
    action :install
  end
end

%w(git docker r node yarn).each do |pkg|
  homebrew_package pkg do
    action :install
  end
end
