# Requirements
* Hardware
  * 2GB free RAM
  * 30GB free disk space
* Software
  * Vagrant
  * Packer
  * Oracle VirtualBox
* ~ 30 minutes to run tests

# Usage
Create a box (virtual machine image):

`packer build .\win2016-primitive.json`


Add the box to Vagrant:

`vagrant box add win2016-primitive-virtualbox.box --force --name win2016-primitive`


Spin up a virtual machine from the box:

`vagrant up`

# Verification
Verify the virtual machine is up and running:

`vagrant powershell`

then
```
whoami
ipconfig
exit
```

# Cleaning up
Remove the virtuatl machine:

`vagrant destroy`


Remove the box and temp files:

```
vagrant box remove win2016-primitive
rm win2016-primitive-virtualbox.box
rm output-virtualbox-iso/*
rm output-virtualbox-iso
```

Consider also removing downloaded ISO files:

`rm packer_cache`


# Rebuilding
```
vagrant destroy --force
vagrant box remove win2016-primitive
rm win2016-primitive-virtualbox.box
rm output-virtualbox-iso/*
rm output-virtualbox-iso
packer build .\win2016-primitive.json
vagrant box add win2016-primitive-virtualbox.box --force --name win2016-primitive
vagrant up
```