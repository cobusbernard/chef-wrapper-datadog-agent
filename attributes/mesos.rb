if node.role?('mesos-master')
  default['datadog']['mesos'] =
    instances: [{
      'url'               => 'http://localhost:5050',
      'timeout' => 8,
      'tags'              => [node.chef_environment]
    }],
    init_config: {
      default_timeout: 10
    }
end

if node.role?('mesos-slave')
  default['datadog']['mesos'] =
    instances: [{
      'url'               => 'http://localhost:5051',
      'timeout' => 8,
      'tags'              => [node.chef_environment]
    }],
    init_config: {
      default_timeout: 10
    }
end
