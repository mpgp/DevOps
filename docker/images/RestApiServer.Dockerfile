FROM microsoft/aspnetcore AS mpgprestapiserver

COPY --from=mpgpbackendbuilder mpgpbackendbuilder/src/Mpgp.RestApiServer/bin/release/netcoreapp2.0/publish mpgprestapiserver

WORKDIR mpgprestapiserver
ENV ASPNETCORE_URLS http://*:5000
ENTRYPOINT ["dotnet", "Mpgp.RestApiServer.dll"]