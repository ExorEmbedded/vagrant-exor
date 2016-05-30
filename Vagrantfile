########################
########################---->SCRIPT_1
########################
$script1 = <<SCRIPT
sudo su
whoami
# Install required packages and setup source repositories (required to patch pam)
sudo apt-get update 
sudo apt-get install -y git python diffstat texinfo gawk chrpath wget nano
sudo apt-get install -y build-essential
sudo apt-get install -y x11vnc xinit xserver-xorg-input-evdev bc g++-multilib
sudo apt-get install -y e17
sudo apt-get install dos2unix
wait

# Setup avahi to autoconnect to device
sudo apt-get install -y avahi-daemon avahi-utils

SCRIPT
########################
########################---->SCRIPT_2
########################
$script2 = <<SCRIPT
sudo su
mkdir -p /var/run/dbus

#Setup build environment for libpam
apt-get -y build-dep pam

#Rebuild and istall libpam with --disable-audit option
export CONFIGURE_OPTS=--disable-audit
apt-get -b source pam
export CONFIGURE_OPTS=--disable-audit
dpkg -i libpam-doc*.deb libpam-modules*.deb libpam-runtime*.deb libpam0g*.deb

# gstreamer qtcreator deps
apt-get install -y libgstreamer0.10-0 libgstreamer-plugins-base0.10-0

# Install SDK
wget http://download.exorembedded.net:8080/Public/SDK/exor-evm-qt5-sdk.sh -O /exor-evm-qt5-sdk.sh
chmod +x /exor-evm-qt5-sdk.sh
//exor-evm-qt5-sdk.sh

# Bitbake wont run as root, create a new user and home folder
useradd -m -d /home/user -s /bin/bash user
echo "user:password" | chpasswd 
adduser user sudo
chown -R user:user /home/user
#remove password to user
sudo sed /etc/sudoers -i -e 's/%sudo\tALL=(ALL:ALL) ALL/%sudo\tALL=(ALL) NOPASSWD: ALL/g'

cd /home/user/
wait
echo "export HOME=/home/user" >> /home/user/.profile
whoami

# Install qtcreator
whoami
wget  http://download.exorembedded.net:8080/Public/utils/qtcreator-3.2.2.tar.gz -O /home/user/qtcreator-3.3.2.tar.gz
chmod 777 /home/user/qtcreator-3.3.2.tar.gz
tar xzvf /home/user/qtcreator-3.3.2.tar.gz -C /home/user/ 
rm /home/user/qtcreator-3.3.2.tar.gz

# Clone repositories
mkdir -p /home/user/yocto-2.0/git
cd /home/user/yocto-2.0/git
git clone -b jethro git://github.com/ExorEmbedded/yocto-poky.git
git clone -b jethro git://github.com/ExorEmbedded/yocto-meta-openembedded.git
git clone -b jethro git://github.com/ExorEmbedded/meta-browser.git
git clone -b jethro git://github.com/ExorEmbedded/meta-qt5.git
git clone -b jethro git://github.com/ExorEmbedded/meta-exor.git
echo 'BUILD_ARCH = "i686"' >> meta-exor-us02/conf/local.conf.sample
Set yocto config template path
echo "export TEMPLATECONF=/home/user" >> /home/user/.profile
SCRIPT
########################
########################---->SCRIPT_3
########################
$script3 = <<SCRIPT

sudo su user
# Apply settings and customizations
cd /vagrant/data
tar xvzpf e17-settings.tar.gz -C /home/user/
#rm e17-settings.tar.gz
tar xvzpf qtcreator-3.3.2-settings.tar.gz -C /home/user/
#rm qtcreator-3.3.2-settings.tar.gz


wait
cd /home/user/
touch .xinitrc
echo -e "enlightenment_start \n" >> /home/user/.xinitrc
chown user:user .xinitrc
mkdir /home/user/.vnc
wait

sudo cp -f -r /vagrant/data/helloworld  /home/user
sudo cp -f -r /vagrant/data/.bashrc /home/user/.bashrc
sudo cp -f -r /vagrant/data/Pattern_Radial.edj  /home/user
sudo cp -f -r /vagrant/data/enlightenment.conf  /etc/init/
dos2unix /etc/init/enlightenment.conf
wait
initctl reload-configuration
sync
wait

#set start directory terminal
echo "cd" >> .bashrc
sudo chown -R user:user /home/user/
  
SCRIPT

Vagrant.configure(2) do |config|
  
  config.vm.box = "ubuntu/trusty32"
  config.vm.provider "virtualbox" do |v|
    v.name = "my_vm"
  end
  config.vm.hostname = "exor"

  config.vm.provider "virtualbox" do |v|
    v.gui = true
  end
 
  config.vm.network "public_network"
  config.vm.provision "shell", inline: $script1, privileged: false

  config.vm.network "forwarded_port", guest: 5353, host: 5353, protocol: "udp", auto_correct: true
  config.vm.provision "shell", inline: $script2
  
  
  config.vm.provision "shell", inline: $script3
  
  config.vm.network "forwarded_port", guest: 5555, host: 5555, auto_correct: true
  config.vm.network "forwarded_port", guest: 5353, host: 5353, auto_correct: true
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 1
  end
  
end