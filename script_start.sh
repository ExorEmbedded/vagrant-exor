
set -e

target=

VERSION=1.0
STAGE1_BOX="vagrant_exor_stage1.box"

# Clean up VMs
vboxmanage controlvm "ExorDev-VM" poweroff || true
vboxmanage unregistervm "ExorDev-VM" --delete || true
vboxmanage unregistervm "ExorDev-VM-stage1" --delete || true

if [ -n "$rebuild" ]; then
	echo Rebuilding stage 1
	cd stage1
	rm -rf .vagrant
	vagrant up
	vagrant halt
	[ -e $STAGE1_BOX ] && mv $STAGE1_BOX $STAGE1_BOX.prev
	vagrant package --output $STAGE1_BOX
	vboxmanage unregistervm ExorDev-VM-stage1 --delete
	cd ..
fi

rm -rf .vagrant

# Force load from file
vagrant box remove ./stage1/$STAGE1_BOX || true

TARGET=$target vagrant up
vagrant halt

# Remove shared folder used by vagrant
vboxmanage sharedfolder remove "ExorDev-VM" -name "vagrant"

CFGFILE="$( vboxmanage showvminfo ExorDev-VM --machinereadable | grep CfgFile | cut -d'"' -f2)"
VMDIR="$( dirname "$CFGFILE" )"
cd "$VMDIR"

DISK_IMAGE="$( echo box-disk*)"

# Clone hd and resize to 300GB
VBoxManage clonehd "$DISK_IMAGE" "cloned.vdi" --format vdi
VBoxManage modifyhd "cloned.vdi" --resize 307000
vboxmanage modifyhd "cloned.vdi" --compact
VBoxManage clonehd "cloned.vdi" "ExorVM-hd.vmdk" --format vmdk

# Attach new hd
VBoxManage storageattach ExorDev-VM --storagectl "SATAController" --port 0 --device 0 --type hdd --medium "ExorVM-hd.vmdk"

# Remove old hardisk and intermediate vdi
vboxmanage closemedium "$DISK_IMAGE" --delete
vboxmanage closemedium "cloned.vdi" --delete

# Export VM
cd ..
rm -f Exor-VirtualBox-VM-v$VERSION.ova
VBoxManage export ExorDev-VM -o Exor-VirtualBox-VM-v$VERSION.ova || exit 0

# Delete VM
vboxmanage unregistervm "ExorDev-VM" --delete
