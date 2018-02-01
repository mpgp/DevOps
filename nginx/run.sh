#!/usr/bin/env bash

# Configure nginx for proxy WebApiServer
cp mpgp-api.conf /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/mpgp-api.conf /etc/nginx/sites-enabled/

# Configure nginx for proxy WebSocketServer
cp mpgp-ws1.conf /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/mpgp-ws1.conf /etc/nginx/sites-enabled/

# Restart nginx for apply new changes
service nginx restart
