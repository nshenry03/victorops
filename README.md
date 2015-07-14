VictorOps Cookbook
=====================
This cookbook configures the VictorOps repository on RHEL/Debian servers and
can be used to install VictorOps packages such as Zabbix.

## Supported Platforms

The following platforms have been tested with Test Kitchen:

- Ubuntu 12.04
- Ubuntu 14.04
- CentOs 6.6
- CentOs 7.1

## Usage

### victorops::default
Configures the VictorOps repository on RHEL/Debian servers.

Include `victorops` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[victorops::default]"
  ]
}
```

### victorops::zabbix
Installs the `victorops-zabbix` package (automatically includes/runs
`victorops::default` first)

Include `victorops::zabbix` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[victorops::zabbix]"
  ]
}
```

## License and Authors

- Author:: Nick Henry (<nshenry03@gmail.com>)

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
