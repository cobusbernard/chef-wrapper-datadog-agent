if node.role?('consul-server')
  default['datadog']['consul']['instances'] = [
    {
      'url'               => 'http://localhost:8500',
      'new_leader_checks' => true,
      'catalog_checks'    => true,
      'service_whitelist' => ['consul'],
      'tags'              => [node.chef_environment, 'consul']
    }
  ]
end
