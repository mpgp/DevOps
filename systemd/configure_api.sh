#!/bin/bash
cp mpgp-api.service /etc/systemd/system/
sudo systemctl enable mpgp-api.service
sudo systemctl start mpgp-api.service

