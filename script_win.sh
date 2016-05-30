#!/bin/sh
cd

if [ -e VirtualBox\ VMs/my_vm/*.vbox ]; then
	VBoxManage controlvm my_vm poweroff
	VBoxManage unregistervm --delete "my_vm"
fi

if [ -e VirtualBox\ VMs/my_vm ]; then
	cd VirtualBox\ VMs
	rm -r my_vm
	cd
fi
if [ -e vagrant-exor ]; then
	cd 
	rm -r -f vagrant-exor
fi

#load file for run vagrant up
cd
git clone https://github.com/ExorEmbedded/vagrant-exor.git
cd vagrant-exor
vagrant up
wait
#dhutdown virtualmachine
vagrant halt -f
wait

#resize harddisk virtual machine
cd
cd VirtualBox\ VMs/my_vm
VBoxManage clonehd "box-disk1.vmdk" "cloned.vdi" --format vdi
VBoxManage modifyhd "cloned.vdi" --resize 256000
VBoxManage storageattach my_vm --storagectl "SATAController" --port 0 --device 0 --type hdd --medium cloned.vdi


#create box for user
cd
cd vagrant-exor
#created file.box
vagrant package --vagrant Vagrantfile --output vagrant_exor_32bit.box
