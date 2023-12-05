# container management
* We know better about containers let's see how to manage it using commands

# container create commands
  - Create container and run it in foreground `docker run -t -d centos`
     arguments: `t - tty`
  - Create container and run it in background and keep container running without exit `docker run -t -d centos`
    arguments: `d - detached`
  - Assigning a name to my container `docker run -t -d --name myhost centos`
  - Creating container by specifing tags `docker run -t -d --name myhost centos:7.5`
  - Binding local port 80 to container port 80 `docker run -t -d -p 80:80 --name myhost centos`
    arguments: `p - publish`

# container monitoring
  - View running containers `docker ps`
  - View running and stopped containers `docker ps -a`
  - To check the port flow of container `docker port myhost`
  - Run top on container without entering into it `docker top myhost`

# login into container
  - Login to existing container which is already available (only applicable for machines in exited state)
    `docker start -ai myhost`
  - Login to existing machine which is up and running at background `docker exec -it myhost bash`
  - Login directly into the container shell after creating the machine `docker run -it --name myhost centos bash`
    arguments: `i - interactive, t - tty`

# container operations
  - To start container  `docker start myhost`
  - To stop running container `docker stop myhost`
  - Attach the container back which is running in background, but this may not give interactive shell `docker attach myhost`

# run shell commands
  - run any shell commands inside container without login `docker run --name myhost centos cat /etc/redhat-release`

# create sample container through commands
   `docker pull httpd`
   `docker run -t -d -p 80:80 --name myhost httpd`
   `docker exec -it myhost bash`
   `Create a sample html file under "htdocs"`
   `Access your html file from laptop browser "localhost:80"`
