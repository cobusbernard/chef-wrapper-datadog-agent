#
# Cookbook Name:: chef-wrapper-datadog-agent
# Recipe:: default
#
# Copyright (C) 2016 Cobus Bernard
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

if node['os'] != 'windows'
  include_recipe 'datadog::dd-handler'
end

if node.role?('consul-server')
  include_recipe 'datadog::consul'
end

if node.role?('iis-server')
  include_recipe 'datadog::iis'
end

if node.role?('rabbitmq-server')
  include_recipe 'datadog::rabbitmq'
end

if node.role?('mesos-master')
  include_recipe 'datadog::mesos'
end

if node.role?('mesos-slave')
  include_recipe 'datadog::mesos'
end

include_recipe 'datadog::dd-agent'
