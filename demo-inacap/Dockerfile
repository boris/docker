FROM ubuntu
MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apt-get update
RUN apt-get install nginx --no-install-recommends -y

COPY hola.html /usr/share/nginx/html/index.html

EXPOSE 8080:80

CMD ["nginx", "-g", "daemon off;"]
