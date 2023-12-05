# docker file to built an image with apache2

# file creation
- create a file with name `Dockerfile`
- please note that the name of the file has to be `Dockerfile` with `D` as capital

# code
```
FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install apache2 -y
```

* FROM
- from tells which base you would like to use for creating your docker image.
- we are using ubuntu:18:04
- We can also use other OS as well

* RUN
- run command is responsible for building applications on docker image
- here we have asked RUN to update our system & then install nginx on it
