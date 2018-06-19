#
# Tested with:
# VirtualBox 5.2.10
# Vagrant 2.0.4
#
set -e

target=dev-kit

VERSION=4.0
STAGE1_BOX="vagrant_exor_stage1.box"

deleteVM() {
	VBoxManage controlvm "$1" poweroff || true
	sleep 5
	VBoxManage unregistervm "$1" --delete || true
}

# Clean up VMs
deleteVM "ExorDev-VM"
deleteVM "ExorDev-VM-stage1"

if [ -n "$rebuild" -o ! -e stage1/$STAGE1_BOX ]; then
	echo Rebuilding stage 1
	cd stage1
	rm -rf .vagrant
	vagrant up
	vagrant halt
	[ -e $STAGE1_BOX ] && mv $STAGE1_BOX $STAGE1_BOX.prev
	
	VBoxManage storageattach ExorDev-VM-stage1 --storagectl "SCSI" --port 1 --medium none || true
	
	CFGFILE="$( vboxmanage showvminfo ExorDev-VM-stage1 --machinereadable | grep CfgFile | cut -d'"' -f2)"
	VMDIR="$( dirname "$CFGFILE" )"
	
	cd "$VMDIR"
	HDFILE="$( ls *cloudimg.vmdk )"

	# Convert hd to VDI to resize it to 300GB
	VBoxManage clonemedium $HDFILE "ExorVM-hd.vdi" --format VDI
	VBoxManage modifyhd "ExorVM-hd.vdi" --resize 310000
	VBoxManage modifyhd "ExorVM-hd.vdi" --compact

	# Attach new hd
	VBoxManage storageattach ExorDev-VM-stage1 --storagectl "SCSI" --port 0 --device 0 --type hdd --medium "ExorVM-hd.vdi"

	# Remove old hardisk
	VBoxManage closemedium $HDFILE --delete
    cd -	

	vagrant package --output $STAGE1_BOX
	VBoxManage unregistervm ExorDev-VM-stage1 --delete
	cd ..
fi

rm -rf .vagrant

# Force load from file
vagrant box remove ./stage1/$STAGE1_BOX || true

TARGET=$target vagrant up
vagrant halt

# Remove shared folder used by vagrant
VBoxManage sharedfolder remove "ExorDev-VM" -name "vagrant"

# Export VM
rm -rf Exor-VirtualBox-VM-v$VERSION.ova
VBoxManage export ExorDev-VM -o Exor-VirtualBox-VM-v$VERSION.ova

exit 0
