ARG NODE_TAG=18.16-slim
ARG NGINX_TAG=latest
ARG APP_HOME=/app

FROM node:${NODE_TAG} as build
ARG NODE_TAG
ARG APP_HOME
WORKDIR ${APP_HOME}
COPY package*.json ${APP_HOME}/
RUN echo -n 'node '; node -v; \
    echo -n 'npm '; npm -v ; \
    npm install && \
    npm cache clean --force
COPY src ${APP_HOME}/src/
COPY public ${APP_HOME}/public/
RUN npm run build


FROM nginx:${NGINX_TAG}
ARG NGINX_TAG
ARG APP_HOME
RUN echo "nginx:${NGINX_TAG}" > /docker-image-tag && cat /docker-image-tag
COPY --from=build ${APP_HOME}//build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
