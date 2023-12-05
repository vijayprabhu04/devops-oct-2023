# File copy

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
```

* COPY
- COPY command are used to copy the files to docker image
- here we used COPY command to copy .conf from /tmp directory to the default location on the docker image
