#!/usr/bin/env bash

# Configure nginx for proxy BrowserClient
cp -f ../../nginx/mpgpbrowserclient.conf /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/mpgpbrowserclient.conf /etc/nginx/sites-enabled/

# Configure nginx for proxy RestApiServer
cp -f ../../nginx/mpgprestapiserver.conf /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/mpgprestapiserver.conf /etc/nginx/sites-enabled/

# Restart nginx for apply new changes
service nginx restart
