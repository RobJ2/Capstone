FROM node:12.13.1-stretch-slim
# hadolint ignore=DL4000
LABEL maintainer="Rob Jacobs <jacobs.rob60@hotmail.com>"
MAINTAINER = "jacobs.rob60@hotmail.com"

WORKDIR /bcrypt

COPY app/ /bcrypt/

RUN echo "[INFO]::[install-run-nmp]" && \
    npm install && \
    npm update && \
    npm run build

CMD ["/bin/bash", "-c", "npm run serve"]