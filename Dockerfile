FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY dotnetapp-4.6.2/*.sln ./dotnetapp/
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.csproj ./dotnetapp/
#COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.dll ./dotnetapp/

# copy everything else and build app
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.config ./dotnetapp/
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.cs ./dotnetapp/
#WORKDIR /app/dotnetapp
#WORKDIR "C:\Users\circleci\project\dotnetapp-4.6.2\"
#RUN dotnet build
#RUN cd "C:\Users\circleci\project\dotnetapp-4.6.2" .
RUN powershell.exe -Command Start-Process C:\Users\circleci\project\dotnetapp-4.6.2\MSBuild.exe dotnetapp-4.6.2.sln -ArgumentList '/property:Configuration=Release' 
#RUN MSBuild.exe dotnetapp-4.6.2.sln /property:Configuration=Release
#RUN MSTEST.exe hello-world-x64.dll
#FROM mcr.microsoft.com/dotnet/framework/runtime:4.8 AS runtime
#WORKDIR /app
#ENTRYPOINT ["dotnetapp.exe"]
