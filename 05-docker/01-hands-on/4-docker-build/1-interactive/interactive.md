# quickest and simplest way to build application and convert as docker image is to follow interactive method

* create new docker container with desired image
  `docker run -it --name myhost ubuntu bash`

* Login into shell once container is created and install desired applications
  `apt-get update && apt-get install -y nginx`

* Once container is ready with application make commit
  `docker commit container_id <docker_id>/my-ngnix-image-1.0`

* Finally push the image to docker hub
  `docker push <docker_id>/my-ngnix-image-1.0:latest`
