$ExorVMInstall = <<SCRIPT

set -v -e

echo -e "Yes\n300GB" | /sbin/parted /dev/sda ---pretend-input-tty resizepart 1
resize2fs /dev/sda1

mkdir /home/user/.config

# Setup QtCreator configuration
cp -r /vagrant/data/QtCreator/QtProject /home/user/.config
cp -r /vagrant/data/QtCreator/QtProject /opt
cp -r /vagrant/data/QtCreator/helloworld /home/user
cp -r /vagrant/data/QtCreator/mkspecs /opt

# Copy Xfce configuration
cp -r /vagrant/data/xfce4 /home/user/.config

# SDK Installer
cp /vagrant/data/SDKInstaller/Install*.sh /home/user/Desktop
chmod +x /home/user/Desktop/Install*.sh
cp /vagrant/data/SDKInstaller/installSDK /usr/bin
chmod +x /usr/bin/installSDK

curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo
chmod a+x /usr/bin/repo
git config --global user.name "NoName"
git config --global user.email ""

# Setup Yocto 2.4 workspace
mkdir -p /home/user/exor-yocto-4.0
cd /home/user/exor-yocto-4.0
echo n | repo init -u https://github.com/ExorEmbedded/exor-bsp-platform -b rocko
repo sync

cp -r /vagrant/data/.bashrc /home/user/.bashrc
dos2unix /home/user/.bashrc

# Add a systemd unit to start a xfce dev session
cp -r /vagrant/data/dev-session/dev-session /usr/bin
dos2unix /usr/bin/dev-session
chmod +x /usr/bin/dev-session
cp -r /vagrant/data/dev-session/dev-session.service /lib/systemd/system
ln -s /lib/systemd/system/dev-session.service /etc/systemd/system/multi-user.target.wants/dev-session.service
dos2unix /lib/systemd/system/dev-session.service

cp /vagrant/data/QtCreator/qtcreator.png /usr/share/pixmaps

# Give priority to eth1 which is the bridged interface (needed for avahi)
echo 'auto lo\n\
iface lo inet loopback\n\n\
auto enp0s3\n\
iface enp0s3 inet dhcp\n\
   metric 1\n\n\
auto enp0s8\n\
iface enp0s8 inet dhcp\n\
   metric 0\n' > /etc/network/interfaces

chown -R user:user /home/user/

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