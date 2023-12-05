# set environment and workdir

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
```

* ENV
- ENV command helps to set up environment variables
- here we have used it to set HOME to /root
- the syntax for using ENV is
  `ENV key value`
- some examples of ENV usage are,
  `ENV user admin`
  `ENV database=testdb`
  `ENV PHPVERSION 7`

* WORKDIR
- WORKDIR can set a working directory for the docker image.
- here it has been set to /etc
