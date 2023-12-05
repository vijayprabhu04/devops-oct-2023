# add entrypoint & command

```
FROM ubuntu:18.04
MAINTAINER vijay
LABEL This is a dockerfile created to build apache application
RUN apt-get update && apt-get install -y \
nginx \
curl \
wget \
&& rm -rf /var/lib/apt/lists/* \
service apache2 start
COPY /tmp/apache2.conf /etc/apache2/conf/apache2.conf
EXPOSE 80
ENV HOME /root
WORKDIR /etc
ENTRYPOINT ["free"]
CMD ["-g"]
```

* ENTRYPOINT & CMD
- ENTRYPOINT & CMD both used to define an executable that should run once docker is up
- On ENTRYPOINT, we define an executable
- with CMD, we define additional parameters that are required for ENTRYPOINT
- Like here, we have used ping with ENTRYPOINT but it requires an additional parameter, which we provided with CMD.
- Both commands are used in conjunction with each other
- We can also use CMD alone with something like `CMD ["/bin/sh", "-ec", "sleep 1000"]`

Note: Not all these parameters are required to pass while creating a Dockerfile, you can use only the needed once.
