Install dependencies:

* Vagrant
* Packer
* Oracle VirtualBox

Create a box (virtual machine image):

`packer build .\win2012r2-primitive.json`


Add the box to Vagrant:

`vagrant box add windows2012r2-primitive-virtualbox.box --force --name win2012r2-primitive`


Spin up a virtual machine from the box:

`vagrant up`


Verify the virtual machine is up and running:

`vagrant powershell`


Destroy the virtuatl machine

`vagrant destroy`