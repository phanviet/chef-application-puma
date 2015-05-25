# Puma config
default[:app][:puma] = {}
default[:app][:puma][:socket] = "#{node[:app][:sockets_path]}/puma.sock"
default[:app][:puma][:pid] = "#{node[:app][:pids_path]}/puma.pid"
default[:app][:puma][:log] = "#{node[:app][:logs_path]}/puma.log"
default[:app][:puma][:state] = "#{node[:app][:logs_path]}/puma.state"
default[:app][:puma][:error_log] = "#{node[:app][:logs_path]}/puma.error.log"
default[:app][:puma][:workers] = 2
default[:app][:puma][:threads] = 5
default[:app][:puma][:user] = "#{node[:app][:user]}"
default[:app][:puma][:group] = "#{node[:app][:group]}"
default[:app][:puma][:script] = "#{node[:app][:services_path]}/puma-#{node[:app][:name]}"
default[:app][:puma][:config] = "#{node[:app][:config_path]}/puma.rb"

default[:app][:monit][:puma] = "#{node[:app][:monit][:path]}/puma-#{node[:app][:name]}.conf"