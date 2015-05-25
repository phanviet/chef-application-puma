#
# Cookbook Name:: application-unicorn
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{puma.rb puma.sh puma.conf}.each do |f|
  upload_template "#{node[:app][:config_path]}/#{f}" do
    source "#{f}.erb"
  end
end

bash 'Setup puma service' do
  code <<-EOL
    sudo cp "#{node[:app][:config_path]}/puma.sh" "#{node[:app][:puma][:script]}" && sudo chown #{node[:app][:puma][:user]}:#{node[:app][:puma][:group]} #{node[:app][:puma][:script]} && sudo chmod ugo+x #{node[:app][:puma][:script]}
    sudo cp "#{node[:app][:config_path]}/puma.conf" "#{node[:app][:monit][:puma]}"
  EOL

  notifies :restart, 'service[monit]', :immediately
end

include_recipe 'application-puma::service'