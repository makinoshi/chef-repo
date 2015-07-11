# My chef recipes

## How to install

1. Install ruby

1. Install gems

```
cd chef-repo
bundle install --path vendor/bundle
```

1. Install third party's cookbooks

```
mkdir cookbooks
undle exec berks vendor cookbooks
```
1. set ssh-config

Set ssh-config in order to execute yum or apt-get etc.. not to use sudo

1. prepare chef on target server

```
knife solo prepare target
# edit nodes/target.json
```
1. execute cook

```
knife solo cook target
```
