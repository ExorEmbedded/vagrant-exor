#load file for run vagrant up
cd
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