#
# Cookbook Name:: learningchef
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

## source is looked up in templates/default
template '/tmp/abcd.txt' do
	source "abcd.txt"
	action :create
	user "saiteja"
	group "saiteja"
	mode 777
end

directory '/tmp/testdir' do 
	action :create
end

## source is looked up in files/default
cookbook_file '/tmp/x1.txt' do
	source "abcd.txt"
	mode 0644
end

## node will take the defaults for the attributes file
file node[:file] do
	action :create
	mode node['perm']
	user node['user']
	group node['group']
end


package 'nginx' do
	action :install
end

file '/tmp/sshkeys' do 
	content "#{node[:keys][:ssh][:host_rsa_public]}\n#{node[:keys][:ssh][:host_dsa_public]}\n"
	action :create
end

file '/tmp/serial' do
	content "#{node[:dmi][:base_board][:serial_number]}\n"
	mode node[:perm]
	user node[:user]
	group node[:group]
end

file '/tmp/cachepath' do
	content "#{Chef::Config[:file_cache_path]}\n"
end

directory node[:testfile] do 
	action :create
end

filename = "#{node[:testfile]}" + "/zzz"
file filename do
	action :create
	mode node[:perm]
	user node[:user]
	group node[:group]
end

file node[:testfile1] do
	action :create
	mode node[:perm]
    user node[:user]
    group node[:group]
end

remote_file '/tmp/sublime.tar.bz2' do
	source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2"	
	mode node[:perm]
	user node[:user]
	group node[:group]
	not_if do
		File.exist?("/tmp/sublime.tar.bz2")
	end
end

execute "uptime-script" do 
	user node[:user]
	command "/bin/bash /scripts/uptime.sh > /tmp/uptimes.log &"
	not_if { File.exist?("/tmp/uptimes.log") }
	action :nothing
end

#### -------
# execute block should always be on top of the calling block
execute "change-perms" do 
	user "root"
	command "chmod 777 -R /tmp/permcheck && chown -R root:root /tmp/permcheck"
	action :nothing
end

file '/tmp/permcheck' do
	action :create
	notifies :run , "execute[change-perms]", :immediately
end


