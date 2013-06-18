#
# Cookbook Name:: loadreport
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
magic_shell_environment 'PATH' do
  value "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/loadreport-server/bin/phantomjs--linux-i686/bin"
end

directory "/opt/loadreport-server" do
  owner "vagrant"
  group "vagrant"
  mode 00775
  action :create
end

git "/opt/loadreport-server" do
  repository "git://github.com/r3b/loadreport-server.git"
  reference "vagrant"
  enable_submodules true
  action :sync
end

npm_package "express" do
	version "3.1.0"
	path "/opt/loadreport-server"
    action :install_local
end
npm_package "hjs" do
	path "/opt/loadreport-server"
    action :install_local
end
npm_package "temp" do
	version "0.5.0"
	path "/opt/loadreport-server"
    action :install_local
end
npm_package "cradle" do
	version "0.6.5"
	path "/opt/loadreport-server"
    action :install_local
end
npm_package "url" do
	version "0.7.9"
	path "/opt/loadreport-server"
    action :install_local
end
npm_package "tls" do
	version "0.0.1"
	path "/opt/loadreport-server"
    action :install_local
end
npm_package "amqp" do
	version "0.1.6"
	path "/opt/loadreport-server"
    action :install_local
end
npm_package "node-uuid" do
	version "1.4.0"
	path "/opt/loadreport-server"
    action :install_local
end
npm_package "phantomjs" do
  version "1.9.1-0"
  path "/opt/loadreport-server"
    action :install_local
end
npm_package "consolidate" do
  version "0.9.1"
  path "/opt/loadreport-server"
    action :install_local
end
npm_package "hogan.js" do
	path "/opt/loadreport-server"
    action :install_local
end
