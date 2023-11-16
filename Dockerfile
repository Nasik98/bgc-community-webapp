FROM node:18-alpine

WORKDIR /app
COPY . .
RUN npm install

RUN npm run build

ENV NODE_ENV production

RUN npm prune --production

EXPOSE 3000

CMD ["npm", "run", "dev"]