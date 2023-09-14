ARG NODE_TAG=18.16-slim
ARG APP_HOME=/app

FROM node:${NODE_TAG} as development
ARG APP_HOME

WORKDIR ${APP_HOME}

COPY package*.json /app
RUN npm install && \
    npm cache clean --force

COPY ./ /app
CMD ["npm", "start"]
