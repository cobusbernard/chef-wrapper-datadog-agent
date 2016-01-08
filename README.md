# chef-wrapper-datadog-agent-cookbook

Wrapper cookbook to install & configure the DataDog agent.

## Supported Platforms

Ubuntu 14.04

## Usage

### chef-wrapper-datadog-agent::default

Include `chef-wrapper-datadog-agent` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-wrapper-datadog-agent::default]"
  ]
}
```

## License and Authors

Author:: Cobus Bernard (<me@cobus.io>)
