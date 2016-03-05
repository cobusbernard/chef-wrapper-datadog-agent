mesos_instances = Array.new

if node.role?('mesos-master')
  mesos_instances << {
    'url'               => 'http://localhost:5050',
    'timeout' => 8,
    'tags'              => [node.chef_environment, 'mesos']
  }
end

if (mesos_instances.length > 0)
  default['datadog']['mesos']["instances"] = mesos_instances
  default['datadog']['mesos']["init_config"] = {
      default_timeout: 10
    }
end
