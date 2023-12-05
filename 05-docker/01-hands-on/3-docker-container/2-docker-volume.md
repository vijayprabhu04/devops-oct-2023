# Attach base machine volume to container
- Docker allows to share storage among multiple containers
- Does not delete contained data when deleting the container.
- Back up, restore, and migrate data easily

# Attaching external volume to a docker container
  `docker run -t -d -v /Users/Docker:/data --name myhost centos`
- In linux machine hosted container, you can create logical volume on base machine and attach to docker container
