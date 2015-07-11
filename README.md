# My chef recipes

## How to install

### Install ruby

### Install gems

```
cd chef-repo
bundle install --path vendor/bundle
```

### Install third party's cookbooks

```
mkdir cookbooks
undle exec berks vendor cookbooks
```
### set ssh-config

Set ssh-config in order to execute yum or apt-get etc.. not to use sudo

### prepare chef on target server

```
knife solo prepare target
# edit nodes/target.json
```
### execute cook

```
knife solo cook target
```
