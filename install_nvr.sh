# download and install latest ubuntu package
# wget -q -O unifi-video.deb https://dl.ubnt.com/firmwares/ufv/v3.9.8/unifi-video.Ubuntu16.04_amd64.v3.9.8.deb
wget -q -O unifi-video.deb https://dl.ubnt.com/firmwares/ufv/v3.9.12/unifi-video.Debian7_amd64.v3.9.12.deb 
dpkg -i unifi-video.deb
apt-get -f install -y

# set start_nvr.sh executable 
chmod +x /start_nvr.sh

#clean up
rm unifi-video.deb
