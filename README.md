
````
packer build x86_64-virtualbox-base.json
````

````
packer build x86_64-virtualbox-vagrant.json
````

```
vagrant box add file://builds/virtualbox/vagrant/centos-7-64/centos-7-64.box --name mheiges/centos-7-64 --force
```
