FROM debian:wheezy
MAINTAINER https://github.com/kost

# Install Pre-reqs
RUN apt-get update && apt-get install -y \
  wget ca-certificates procps \
  apt-utils 

# Add NVR Install and Start-up scripts
ADD install_nvr.sh /
ADD start_nvr.sh /

# Install NVR
RUN bash /install_nvr.sh

ADD unifi-video /usr/sbin/unifi-video

# Volumes
VOLUME /var/lib/unifi-video  
VOLUME /var/log/unifi-video
VOLUME /var/cache/unifi-video

# Ports
EXPOSE 7442 7443 7445 7446 7447 7080 6666

# start NVR
CMD ["sh","/start_nvr.sh"]
