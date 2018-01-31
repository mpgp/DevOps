#!/bin/bash
cp mpgp-api.conf /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/mpgp-api.conf /etc/nginx/sites-enabled/
service nginx restart

