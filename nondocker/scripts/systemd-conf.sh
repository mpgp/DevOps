#!/usr/bin/env bash

# Create service for RestApiServer
cp ../systemd/mpgprestapiserver.service /etc/systemd/system/
systemctl enable mpgprestapiserver.service
systemctl start mpgprestapiserver.service

# Create service for WebSocketServer
cp ../systemd/mpgpwebsocketserver.service /etc/systemd/system/
systemctl enable mpgpwebsocketserver.service
systemctl start mpgpwebsocketserver.service
