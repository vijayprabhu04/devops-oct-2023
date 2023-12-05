# add labels

```
FROM ubuntu:18.04
LABEL This is a dockerfile created to build apache application
RUN apt-get update
RUN apt-get install apache2 -y
```

* MAINTAINER & LABEL
- both fields `MAINTAINER & LABEL` are serving same purpose
- they are used to pass information like the Maintainer of the docker image, Version number, purpose, or some other remarks
- We can add a number of labels but it's recommended to avoid unnecessary labels
