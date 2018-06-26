# Cookbook:: injector
# Recipe:: limits
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

limits_config 'system-wide limits' do
  limits [
    { domain: '*', type: 'hard', item: 'nofile', value: 65535 },
    { domain: '*', type: 'soft', item: 'nofile', value: 65535 }
  ]
  use_system true
end

sysctl_param 'net.ipv4.tcp_max_syn_backlog' do
  value 40000
end

sysctl_param 'net.core.somaxconn' do
  value 40000
end

sysctl_param 'net.core.wmem_default' do
  value 8388608
end

sysctl_param 'net.core.rmem_default' do
  value 8388608
end

sysctl_param 'net.ipv4.tcp_sack' do
  value 1
end

sysctl_param 'net.ipv4.tcp_window_scaling' do
  value 1
end

sysctl_param 'net.ipv4.tcp_fin_timeout' do
  value 14
end

sysctl_param 'net.ipv4.tcp_keepalive_intvl' do
  value 30
end

sysctl_param 'net.ipv4.tcp_tw_reuse' do
  value 1
end

sysctl_param 'net.ipv4.tcp_moderate_rcvbuf' do
  value 1
end

sysctl_param 'net.core.rmem_max' do
  value 134217728
end

sysctl_param 'net.core.wmem_max' do
  value 134217728
end

sysctl_param 'net.ipv4.tcp_mem' do
  value '134217728 134217728 134217728'
end

sysctl_param 'net.ipv4.tcp_rmem' do
  value '4096 277750 134217728'
end

sysctl_param 'net.ipv4.tcp_wmem' do
  value '4096 277750 134217728'
end

sysctl_param 'net.core.netdev_max_backlog' do
  value 300000
end
