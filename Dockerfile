FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
COPY bin/Release/netcoreapp3.1/ App/
WORKDIR /App
EXPOSE 5000

ENTRYPOINT ["dotnet", "WebAPI_Core1.dll"]
