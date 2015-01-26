#
# Cookbook Name:: df_nginx
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "nginx::default"

include_recipe "df_nginx::server_block"

include_recipe "df_nginx::site_dir"
