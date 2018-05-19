#!/usr/bin/env bash

PROJECT=${1:-client}

API_SERVER_PROJECT_DIR="/home/agent4mpgp/mpgp/src/Mpgp.RestApiServer"

BROWSER_CLIENT_OUTPUT_DIR="/home/agent4mpgp/mpgp/src/Mpgp.RestApiServer/wwwroot"
BROWSER_CLIENT_PROJECT_DIR="/home/agent4mpgp/BrowserClient"

function rebuildRestApiServer {
    sudo systemctl stop mpgp-api.service

    cd $API_SERVER_PROJECT_DIR
    git pull gitlab build

    ln -sf $(pwd)/appsettings.json $(pwd)/bin/Release/netcoreapp2.0/appsettings.json
    ln -sf $(pwd)/wwwroot $(pwd)/bin/Release/netcoreapp2.0/wwwroot

    sudo systemctl start mpgprestapiserver.service
}

function rebuildBrowserClient {
    cd $BROWSER_CLIENT_PROJECT_DIR
    git pull gitlab build
    rm -rf $BROWSER_CLIENT_OUTPUT_DIR"/static"
    cp -rf $BROWSER_CLIENT_PROJECT_DIR"/build/*" $BROWSER_CLIENT_OUTPUT_DIR"/"
}

if [ $PROJECT == "api" ] || [ $PROJECT == "a" ] || [ $PROJECT == "rest" ] || [ $PROJECT == "r" ]
then
    rebuildRestApiServer
elif [ $PROJECT == "client" ] || [ $PROJECT == "c" ]
then
    rebuildBrowserClient
else
    echo "Argument Exception"
fi
