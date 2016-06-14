#!/bin/sh
cd

if [ -e VirtualBox\ VMs/Exor-Development/*.vbox ]; then
	VBoxManage controlvm Exor-Development poweroff
	VBoxManage unregistervm --delete "Exor-Development"
fi

if [ -e VirtualBox\ VMs/Exor-Development ]; then
	cd VirtualBox\ VMs
	rm -r Exor-Development
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
#shutdown virtualmachine
vagrant halt -f
wait

#resize harddisk virtual machine
cd
cd VirtualBox\ VMs/Exor-Development/
VBoxManage clonehd "box-disk1.vmdk" "cloned.vdi" --format vdi
VBoxManage modifyhd "cloned.vdi" --resize 256000
VBoxManage storageattach my_vm --storagectl "SATAController" --port 0 --device 0 --type hdd --medium cloned.vdi

#reload machine 
cd
cd vagrant-exor
vagrant up
vagrant halt
wait
#created file.box
vagrant package --vagrant Vagrantfile --output vagrant_exor_32bit.box
wait
