#!/usr/bin/env bash

# Create service for API
cp mpgp-api.service /etc/systemd/system/
systemctl enable mpgp-api.service
systemctl start mpgp-api.service

# Create service for Socket
cp mpgp-ws1.service /etc/systemd/system/
systemctl enable mpgp-ws1.service
systemctl start mpgp-ws1.service
