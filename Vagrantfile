$ExorVMInstall = <<SCRIPT

set -e

wget http://download.exorembedded.net:8080/Public/usom01/SDK/exor-us01kit-qt5-x11-sdk-v2.0.sh -q -O /exor-evm-qt5-sdk.sh
mkdir -p /opt/exorintos/us01-kit-x11
chmod +x /exor-evm-qt5-sdk.sh
/exor-evm-qt5-sdk.sh -y -d /opt/exorintos/us01-kit-x11
rm /exor-evm-qt5-sdk.sh
cp -r /vagrant/data/linux-us01-g++ /opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/qt5/mkspecs/

wget http://download.exorembedded.net:8080/Public/usom01/SDK/exor-us01kit-qt5-wayland-sdk-v2.0.sh -q -O /exor-evm-qt5-sdk.sh
mkdir -p /opt/exorintos/us01-kit-wayland
chmod +x /exor-evm-qt5-sdk.sh
/exor-evm-qt5-sdk.sh -y -d /opt/exorintos/us01-kit-wayland
rm /exor-evm-qt5-sdk.sh
cp -r /vagrant/data/linux-us01-g++ /opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/qt5/mkspecs/

wget http://download.exorembedded.net:8080/Public/usom02/SDK/exor-us02kit-qt5-x11-sdk-v2.0.sh -q -O /exor-evm-qt5-sdk.sh
mkdir -p /opt/exorintos/us02-kit
chmod +x /exor-evm-qt5-sdk.sh
/exor-evm-qt5-sdk.sh -y -d /opt/exorintos/us02-kit
rm /exor-evm-qt5-sdk.sh
cp -r /vagrant/data/linux-us02-g++ /opt/exorintos/us02-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/qt5/mkspecs/

wget http://download.exorembedded.net:8080/Public/usom03/SDK/exor-us03kit-qt5-x11-sdk-v2.0.sh -q -O /exor-evm-qt5-sdk.sh
mkdir -p /opt/exorintos/us03-kit
chmod +x /exor-evm-qt5-sdk.sh
/exor-evm-qt5-sdk.sh -y -d /opt/exorintos/us03-kit
rm /exor-evm-qt5-sdk.sh
cp -r /vagrant/data/linux-us03-g++ /opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/qt5/mkspecs/

# Bitbake wont run as root, create a new user and home folder
useradd -m -d /home/user -s /bin/bash user
echo "user:password" | chpasswd 
adduser user sudo
echo "export HOME=/home/user" >> /home/user/.profile

# Let user use sudo without password
sed /etc/sudoers -i -e 's/%sudo\tALL=(ALL:ALL) ALL/%sudo\tALL=(ALL) NOPASSWD: ALL/g'

# Do not ask for password to mount filesystems
sed -i'' 's:allow_any>auth_admin:allow_any>yes:' /usr/share/polkit-1/actions/org.freedesktop.udisks2.policy

mkdir /home/user/.config

# Setup QtCreator configuration
cp -r /vagrant/data/QtProject /home/user/.config

# Copy Xfce configuration
cp -r /vagrant/data/xfce4 /home/user/.config

# Shared directory
mkdir /home/user/VM-Share
mkdir /home/user/Desktop
ln -s /home/user/VM-Share /home/user/Desktop/VM-Share

# Setup Yocto 2.1 workspace
mkdir -p /home/user/exor-yocto-2.1/git
cd /home/user/exor-yocto-2.1/git
git clone -b krogoth git://github.com/ExorEmbedded/yocto-poky.git
git clone -b krogoth git://github.com/ExorEmbedded/yocto-meta-openembedded.git
git clone -b master git://github.com/ExorEmbedded/meta-browser.git
git clone -b krogoth git://github.com/ExorEmbedded/meta-qt5.git
git clone -b krogoth git://github.com/ExorEmbedded/meta-exor.git
git clone -b master git://github.com/ExorEmbedded/meta-ti.git
git clone -b krogoth git://github.com/ExorEmbedded/meta-fsl-arm.git

#Set yocto config template path
echo "export TEMPLATECONF=/home/user/exor-yocto-2.1/git/meta-exor/conf" >> /home/user/.profile

cp -r /vagrant/data/helloworld  /home/user
cp -r /vagrant/data/.bashrc /home/user/.bashrc
dos2unix /home/user/.bashrc

# Add a init job to start xfce session
cp -r /vagrant/data/dev-session.conf  /etc/init/
dos2unix /etc/init/dev-session.conf

initctl reload-configuration

# Give priority to eth1 which is the bridged interface (needed for avahi)
echo 'auto lo\n\
iface lo inet loopback\n\n\
auto eth0\n\
iface eth0 inet dhcp\n\
   metric 1\n\n\
auto eth1\n\
iface eth1 inet dhcp\n\
   metric 0\n' > /etc/network/interfaces

chown -R user:user /home/user/

# This is a trick to zero out the hard disk free space. Will result in
# a better compression of the final image
echo Clearing free space...
dd if=/dev/zero of=/fill bs=1M || true
sync
rm /fill

exit 0

SCRIPT


Vagrant.configure(2) do |config|
  
  config.vm.box = "./stage1/vagrant_exor_stage1.box"

  config.vm.hostname = "ExorDev-VM"
  config.vm.network "public_network"
  
  config.vm.provision "shell", env: {TARGET:ENV['TARGET']}, inline: $ExorVMInstall
  
  config.vm.provider "virtualbox" do |v|
    v.name = "ExorDev-VM"
    v.memory = 2048
    v.cpus = 2
    v.customize ["modifyvm", :id, "--accelerate3d", "on"]
	v.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
	v.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
    v.customize ["modifyvm", :id, "--vram", "256"]
    v.customize ["modifyvm", :id, "--hwvirtex", "on"]
	v.customize ["modifyvm", :id, "--usb", "on"]
    v.gui = false
  end
end