FROM node:18-bullseye-slim
WORKDIR /app
COPY ./build .
COPY ./package.json .
ENTRYPOINT ["node", "index.js"]
