    FROM httpd
    LABEL This is a dockerfile created to build apache application
    RUN apt-get update && apt-get install -y \
    nginx \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/* \
    COPY index.html /usr/local/apache2/htdocs/index.html
    EXPOSE 80
    #WORKDIR /etc
    #CMD ["/bin/sh", "-ec", "sleep 1000"]