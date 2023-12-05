# Docker can be installed in many ways

# options
- install `docker desktop` which would eventually virtualize your base laptop
- install docker on exsiting virtual machine which is running in oracle virtual box or ec2 instance

# how to install docker desktop?
- docker desktop installation on MAC
  https://docs.docker.com/docker-for-mac/install/
- docker desktop installation on Windows
  https://docs.docker.com/docker-for-windows/install/

# additinal steps for windows machines to have docker desktop working
- need to install `docker toolbox` which uses VirtualBox instead
- docs and setup info available here
  https://docs.docker.com/toolbox/toolbox_install_windows/
- Release downloads available here
  https://github.com/docker/toolbox/releases
- Toolbox will install everything you need including VirtualBox
- You may also need to enable virtualization in your computer's BIOS settings
- This will be different for each manufacturer, please refer to their documentation on which keys to use to access these settings on reboot

# how to install docker on Linux VMs
- Installing on Centos
  https://docs.docker.com/engine/install/centos/
- Installing on Ubuntu
  https://docs.docker.com/engine/install/ubuntu/
- Installing on Debian
  https://docs.docker.com/engine/install/debian/
