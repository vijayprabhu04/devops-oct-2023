# Expose application ports

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
```

* EXPOSE
- EXPOSE command will open the mentioned port on the docker image to allow access to the outside world
- We could also use EXPOSE to open port 80/tcp which is default for apache
