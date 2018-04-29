FROM node:latest AS mpgpfrontendbuilder

RUN apt-get update && apt-get install git -y \
    && git clone https://github.com/mpgp/BrowserClient.git /mpgpfrontendbuilder

WORKDIR /mpgpfrontendbuilder
ARG env=prod
RUN npm install && npm run build --prod --environment $env