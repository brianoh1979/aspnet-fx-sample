FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 AS build
#WORKDIR /app
WORKDIR c:\\Users\\circleci\\project\\dotnetapp-4.6.2
# copy csproj and restore as distinct layers
COPY dotnetapp-4.6.2/*.sln c:/Users/circleci/project/dotnetapp-4.6.2
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.csproj c:/Users/circleci/project/dotnetapp-4.6.2
#COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.dll ./dotnetapp/

# copy everything else and build app
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.config c:/Users/circleci/project/dotnetapp-4.6.2
COPY dotnetapp-4.6.2/dotnetapp-4.6.2/*.cs c:/Users/circleci/project/dotnetapp-4.6.2
#WORKDIR /app/dotnetapp
#WORKDIR c:\\Users\\circleci\\project\\dotnetapp-4.6.2\\ 
#RUN dotnet build
#RUN cd "C:\Users\circleci\project\dotnetapp-4.6.2" .

RUN powershell -command Get-ChildITem "c:\Users\"
RUN powershell -command Get-ChildITem "c:\Users\circleci\"
RUN powershell -command Get-ChildITem "c:\Users\circleci\project\"
RUN powershell -command Get-ChildITem "c:\Users\circleci\project\dotnetapp-4.6.2\"
#RUN MSBuild.exe dotnetapp-4.6.2.sln /property:Configuration=Release
#RUN MSTEST.exe hello-world-x64.dll
#FROM mcr.microsoft.com/dotnet/framework/runtime:4.8 AS runtime
#WORKDIR /app
#ENTRYPOINT ["dotnetapp.exe"]
