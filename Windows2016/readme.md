Install dependencies:

* Vagrant
* Packer

Create a box (virtual machine image):

`packer build .\win2016-primitive.json`


Add the box to Vagrant:

`vagrant box add windows2016min-virtualbox.box --force --name win2016-primitive`


Spin up a virtual machine from the box:

`vagrant up`


Verify the virtual machine is up and running:

`vagrant powershell`


Destroy the virtuatl machine

`vagrant destroy`