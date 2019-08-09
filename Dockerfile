FROM node:10.13.0-alpine as node


FROM microsoft/dotnet:2.2-aspnetcore-runtime-alpine
WORKDIR /app
#COPY --from=builder /app .
#COPY --from=node /app/build ./wwwroot
#ENTRYPOINT ["./AspNetCoreDemoApp"]
COPY Backend /app
ENTRYPOINT ["dotnet", "Alumni.Web.dll"]
