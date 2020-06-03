FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY dotnetapp-4.6.2/*.sln ./dotnetapp/
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.csproj ./dotnetapp/

# copy everything else and build app
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.config ./dotnetapp/
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.cs ./dotnetapp/
WORKDIR /app/dotnetapp
#RUN dotnet build
RUN MSBuild.exe C:\Users\circleci\project\dotnetapp-4.6.2\dotnetapp-4.6.2.sln /property:Configuration=Release

#FROM mcr.microsoft.com/dotnet/framework/runtime:4.8 AS runtime
#WORKDIR /app
#ENTRYPOINT ["dotnetapp.exe"]
