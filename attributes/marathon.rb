mesos_instances = Array.new

if node.role?('mesos-master')
  mesos_instances << {
    'url'               => 'http://localhost:8080',
    'timeout' => 8,
    'tags'              => [node.chef_environment, 'marathon']
  }
end

if (mesos_instances.length > 0)
  default['datadog']['marathon']["instances"] = mesos_instances
  default['datadog']['marathon']["init_config"] = {
      default_timeout: 10
    }
end
