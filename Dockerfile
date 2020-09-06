FROM node:latest
# hadolint ignore=DL4000
LABEL maintainer="Rob Jacobs <jacobs.rob60@hotmail.com>"
MAINTAINER = "jacobs.rob60@hotmail.com"

WORKDIR /app

COPY index.html /var/www/html/

EXPOSE 80
CMD ["nginx", "-g" , "daemon off;"]