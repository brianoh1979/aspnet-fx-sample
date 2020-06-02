FROM microsoft/dotnet-framework:4.8
WORKDIR /app
COPY bin/Release .
ENTRYPOINT ["MyDotNet46App.exe"]
