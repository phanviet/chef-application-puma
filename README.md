application-puma Cookbook
============

This cookbook helps you setup the `puma` config to run a rails application with `nginx`
- It depends on:
  + [application-defaults](https://github.com/phanviet/chef-application-defaults.git)
  + [application-monit](https://github.com/phanviet/chef-application-monit.git)
- Some related cookbooks:
  + [application-nginx](https://github.com/phanviet/chef-application-nginx.git)

Attributes
----------
  + Reading `attributes` folder in cookbook to know more details

Recipes & Usage
-----
- `recipe[application-puma]`: Setup `puma` config and services to run a rails application with `nginx`
- `recipe[application-puma::service]`: Setup services for unicorn by `monit`
