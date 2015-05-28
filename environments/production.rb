chef_type:           environment
cookbook_versions:
  learningchef: 0.1.0
default_attributes:
description:         Final Production Environment
json_class:          Chef::Environment
name:                production
override_attributes:
  name:    prod
  service: nginx
