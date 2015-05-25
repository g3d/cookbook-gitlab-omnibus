default['gitlab']['version'] = '7.11.2'

case node['platform_family']
when 'debian'
  default['gitlab']['package_format'] = 'deb'
when 'rhel', 'fedora', 'amazon'
  default['gitlab']['package_format'] = 'rpm'
else
  Chef::Log.error("Could not detect compatible package format for gitlab - please specify `['gitlab']['package_format']` as either 'deb' or 'rpm'")
  default['gitlab']['package_format'] = nil
end

## Config

default['gitlab']['config']['external_url']    = "http://#{node['fqdn']}/"
default['gitlab']['config']['ci_external_url'] = "http://ci.#{node['fqdn']}/"
default['gitlab']['config']['gitlab_rails']    = {}
default['gitlab']['config']['user']            = {}
default['gitlab']['config']['unicorn']         = {}
default['gitlab']['config']['sidekiq']         = {}
default['gitlab']['config']['gitlab_shell']    = {}
default['gitlab']['config']['postgresql']      = {}
default['gitlab']['config']['redis']           = {}
default['gitlab']['config']['web_server']      = {}
default['gitlab']['config']['nginx']           = {}
default['gitlab']['config']['logging']         = {}
default['gitlab']['config']['logrotate']       = {}
default['gitlab']['config']['gitlab_ci']       = {}
default['gitlab']['config']['ci_unicorn']      = {}
default['gitlab']['config']['ci_redis']        = {}
default['gitlab']['config']['ci_nginx']        = {}
