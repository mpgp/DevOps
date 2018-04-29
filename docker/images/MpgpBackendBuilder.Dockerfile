FROM microsoft/aspnetcore-build AS mpgpbackendbuilder

RUN apt-get update && apt-get install git -y \
    && git clone https://github.com/mpgp/Mpgp.git /mpgpbackendbuilder \
    && cp -f /mpgpbackendbuilder/tools/appsettings.default.json /mpgpbackendbuilder/tools/appsettings.json

WORKDIR /mpgpbackendbuilder/src/Mpgp.RestApiServer
RUN dotnet restore && dotnet publish -c release

WORKDIR /mpgpbackendbuilder/src/Mpgp.WebSocketServer
RUN dotnet restore && dotnet publish -c release