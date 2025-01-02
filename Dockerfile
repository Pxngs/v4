FROM node:20.5.1-bullseye-slim
ENV NODE_ENV=production

WORKDIR /public

COPY ["package.json", "./"]

RUN npm install

COPY . .

CMD [ "node", "index.js" ]
docker run -d --restart unless-stopped -p 6003:6003 ghcr.io/NebulaServices/3kh0:main
