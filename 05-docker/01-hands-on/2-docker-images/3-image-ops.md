# Command line options to deal with docker image

Docker login from command line
`docker login -u <docker_hub_user_id> -p <password>`

Pull image from docker hub                  
`docker pull centos`

Pull specific version                      
`docker pull ubuntu:14.04`

Details about all images in local system   
`docker images`

Image inspect                              
`docker image inspect centos`

Shows history of image                     
`docker history centos`

To remove one image from local machine     
`docker rmi ubuntu:14.04`  
  - `rmi` refers remove image
  
To remove all image from local machine     
`docker rmi $(docker images -q)`
  - take i/p from command `docker images -q` & delete all images
