FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 AS build
# copy csproj and restore as distinct layers
COPY dotnetapp-4.6.2/*.sln c:/Users/ContainerUser
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.csproj c:/Users/ContainerUser
# copy everything else and build app
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.config c:/Users/ContainerUser
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.cs c:/Users/ContainerUser
RUN MSBuild.exe c:/Users/ContainerUser/dotnetapp-4.6.2.sln /property:Configuration=Release
