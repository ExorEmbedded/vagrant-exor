########################
########################---->SCRIPT_1
########################
$script1 = <<SCRIPT
sudo su

# Install required packages and setup source repositories (required to patch pam)
apt-get update 
apt-get install -y git python diffstat texinfo gawk chrpath wget nano
apt-get install -y build-essential
apt-get install -y x11vnc xinit xserver-xorg-input-evdev bc g++-multilib
apt-get install -y e17

# Setup avahi to autoconnect to device
apt-get install -y avahi-daemon avahi-utils

SCRIPT
########################
########################---->SCRIPT_2
########################
$script2 = <<SCRIPT
sudo su
mkdir -p /var/run/dbus

# to use avahi in with --net host we need to rebuild pam with disable-audit to due a kernel bug solved in kernels > 3.15
#Setup build environment for libpam
apt-get -y build-dep pam
#Rebuild and istall libpam with --disable-audit option
export CONFIGURE_OPTS=--disable-audit
#cd /root
apt-get -b source pam
export CONFIGURE_OPTS=--disable-audit
dpkg -i libpam-doc*.deb libpam-modules*.deb libpam-runtime*.deb libpam0g*.deb

# gstreamer qtcreator deps
apt-get install -y libgstreamer0.10-0 libgstreamer-plugins-base0.10-0

# Trigger a cache cleanup changing version number
#echo 1.1 > /boot/vmVersion

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

# Change user --->RIGUARDA
su user
echo "export HOME=/home/user" >> ~/.profile

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

# Set yocto config template path
echo "export TEMPLATECONF=/home/user" >> ~/.profile
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

# Start VNC and desktop
cd /home/user/
echo -e "enlightenment_start \n" >> ~/.xinitrc
chown user:user .xinitrc
mkdir /home/user/.vnc

cp -f -r /vagrant/data/helloworld  /home/user
cp -f -r /vagrant/data/.bashrc /home/user/.bashrc
cp -f -r /vagrant/data/Pattern_Radial.edj  /home/user
  
SCRIPT
########################
########################
########################
$script4 = <<SCRIPT

sudo su user
#cd ..
bash -c ' avahi-daemon --no-drop-root -D; su user -c "echo password | sudo rm -f /tmp/.X9-lock; echo password | sudo /usr/bin/xinit -- /usr/bin/Xorg"'
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
  config.vm.provision "shell", inline: $script1

  config.vm.network "forwarded_port", guest: 5353, host: 5353, protocol: "udp", auto_correct: true
  config.vm.provision "shell", inline: $script2
  
  
  config.vm.provision "shell", inline: $script3
  
  config.vm.network "forwarded_port", guest: 5555, host: 5555, auto_correct: true
  config.vm.network "forwarded_port", guest: 5353, host: 5353, auto_correct: true
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  #config.vm.provision "shell", inline: $script4,
  #  run: "always"

end