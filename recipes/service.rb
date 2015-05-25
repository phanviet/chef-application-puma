service 'puma' do
  start_command "sudo monit start puma-#{node[:app][:name]}"
  stop_command "sudo monit stop puma-#{node[:app][:name]}"
  restart_command "sudo monit restart puma-#{node[:app][:name]}"
  supports restart: true, stop: true, start: true
end