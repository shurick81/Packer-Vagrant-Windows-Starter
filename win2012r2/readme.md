Hardware requirements:

* 2GB free RAM
* 26GB free disk space
* ~ 30 minutes to run tests


Install dependencies:

* Vagrant
* Packer
* Oracle VirtualBox


Create a box (virtual machine image):

`packer build .\win2012r2-primitive.json`


Add the box to Vagrant:

`vagrant box add win2012r2-primitive-virtualbox.box --force --name win2012r2-primitive`


Spin up a virtual machine from the box:

`vagrant up`


Verify the virtual machine is up and running:

`vagrant powershell`

then
```
whoami
ipconfig
exit
```

Remove the virtuatl machine:

`vagrant destroy`


Remove box and temp files:

```
vagrant box remove win2012r2-primitive
rm win2012r2-primitive-virtualbox.box
rm output-virtualbox-iso/*
rm output-virtualbox-iso
```

Consider also removing downloaded ISO files:

`rm packer_cache`


Rebuild:
```
vagrant destroy --force
vagrant box remove win2012r2-primitive
rm win2012r2-primitive-virtualbox.box
rm output-virtualbox-iso/*
rm output-virtualbox-iso
packer build .\win2012r2-primitive.json
vagrant box add win2012r2-primitive-virtualbox.box --force --name win2012r2-primitive
vagrant up
```