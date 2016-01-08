if node.role?('rabbitmq-server')
  default['datadog']['rabbitmq']['instances'] = [
                                          "api_url" => "http://localhost:15672/api/",
                                          "user" => "#{node['rabbitmq']['default_user']}",
                                          "pass" => "#{node['rabbitmq']['default_pass']}"
    ]
end
