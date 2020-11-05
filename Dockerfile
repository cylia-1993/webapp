FROM ubuntu
MAINTAINER cylia-1993 (cylia.sell@gmail.com) 
RUN apt-get update && apt-get install -y \
  nginx \
  git \
  && rm -rf /var/lib/apt/lists/* \
  && rm -Rf /var/www/html/*
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
ENTRYPOINT ["/usr/sbin/nginx", "-q", "deamon off;"]
