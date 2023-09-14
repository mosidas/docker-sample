ARG DOTNET_TAG=6.0

FROM mcr.microsoft.com/dotnet/sdk:${DOTNET_TAG} AS build
WORKDIR /source
COPY ./*.csproj .
RUN dotnet restore --use-current-runtime
COPY . .
RUN dotnet publish --use-current-runtime --self-contained false --no-restore -o /app

FROM mcr.microsoft.com/dotnet/runtime:${DOTNET_TAG}
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "ProjectName.dll"]
# args
CMD ["arg1", "arg2"]
