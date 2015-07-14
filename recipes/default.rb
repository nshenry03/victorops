#
# Cookbook Name:: victorops
# Recipe:: default
#
# Copyright (C) 2015 Nick Henry
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# TODO(nshenry03):
#   - When VictorOps signs their packages, get rid of the `trusted true` and
#     `gpgcheck false` statements.
#   - VictorOps only seems to have a package for `precise`; however, that seems
#     to work fine on Ubuntu 14.04; when they support other distributions,
#     switch from `distribution 'precise'` to something like `distribution
#     node['lsb']['codename']`

case node['platform']
when 'ubuntu', 'debian'
  include_recipe 'apt::default'
  apt_repository 'victorops' do
    uri 'http://software.victorops.com/apt'
    components ['main']
    distribution 'precise'
    trusted true
    action :add
  end
when 'redhat', 'centos', 'scientific', 'amazon', 'oracle'
  include_recipe 'yum::default'
  yum_repository 'victorops' do
    description 'VictorOps Base repo'
    baseurl 'http://software.victorops.com/yum/'
    gpgcheck false
    action :create
  end
end
