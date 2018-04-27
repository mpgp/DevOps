FROM nginx:latest AS mpgpnginx

EXPOSE 8080
COPY --from=docker_mpgpfrontendbuilder /mpgpfrontendbuilder/dist/ /usr/share/nginx/html
RUN mkdir -p /etc/nginx/sites-available && mkdir -p /etc/nginx/sites-enabled