FROM node:latest
# hadolint ignore=DL4000
LABEL maintainer="Rob Jacobs <jacobs.rob60@hotmail.com>"
MAINTAINER = "jacobs.rob60@hotmail.com"

COPY index.html /var/www/html/

RUN usermod -a -G docker jenkins
USER jenkins

EXPOSE 80
CMD ["nginx", "-g" , "daemon off;"]