ARG NODE_TAG=18.16-slim
ARG APP_HOME=/app

FROM node:${NODE_TAG} as build
WORKDIR /app
RUN npm install -g @angular/cli@13.1.2
EXPOSE 4200
