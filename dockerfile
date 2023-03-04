FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build 

COPY . /app 
WORKDIR /app

RUN dotnet restore
RUN dotnet build -c Release

EXPOSE 5000

CMD ["dotnet", "run"]
