# sort multi-line arguments

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
```

* Advantage
- this helps to avoid duplication
- this also makes PRs a lot easier to read and review
- avoid using command multiple times in this case we have avoided using RUN multiple times
