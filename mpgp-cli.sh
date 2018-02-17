#!/usr/bin/env bash

PROJECT=${1:-WebSocketBrowserClient}

API_SERVER_PROJECT_DIR="/home/agent4mpgp/mpgp/WebApiServer/WebApiServer"

BROWSER_CLIENT_OUTPUT_DIR="/home/agent4mpgp/mpgp/WebApiServer/WebApiServer/wwwroot"
BROWSER_CLIENT_PROJECT_DIR="/home/agent4mpgp/mpgp/WebSocketBrowserClient"

SOCKET_SERVER_PROJECT_DIR="/home/agent4mpgp/mpgp/WebSocketServer/WebSocketServer"

function rebuildWebApiServer {
    sudo systemctl stop mpgp-api.service

    cd $API_SERVER_PROJECT_DIR
    git pull gitlab build

    ln -sf $(pwd)/appsettings.json $(pwd)/bin/Release/netcoreapp2.0/appsettings.json
    ln -sf $(pwd)/wwwroot $(pwd)/bin/Release/netcoreapp2.0/wwwroot

    sudo systemctl start mpgp-api.service
}

function rebuildWebSocketBrowserClient {
    cd $BROWSER_CLIENT_PROJECT_DIR
    git pull gitlab build
    rm -rf $BROWSER_CLIENT_OUTPUT_DIR"/static"
    cp -rf $BROWSER_CLIENT_PROJECT_DIR"/build/*" $BROWSER_CLIENT_OUTPUT_DIR"/"
}

function rebuildWebSocketServer {
    sudo systemctl stop mpgp-ws1.service

    cd $SOCKET_SERVER_PROJECT_DIR
    git pull gitlab build
    ln -sf $(pwd)/appsettings.json $(pwd)/bin/Release/netcoreapp2.0/appsettings.json

    sudo systemctl start mpgp-ws1.service
}


if [ $PROJECT == "api" ] || [ $PROJECT == "a" ]
then
    rebuildWebApiServer
elif [ $PROJECT == "socket" ] || [ $PROJECT == "s" ]
then
    rebuildWebSocketServer
elif [ $PROJECT == "client" ] || [ $PROJECT == "c" ]
then
    rebuildWebSocketBrowserClient
else
    echo "Argument Exception"
fi
