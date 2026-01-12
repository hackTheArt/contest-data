FROM node:20-alpine
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm install --production
COPY . .
EXPOSE 3000

ENV HMAC_SECRET=whatever
ENV FLAG="HCS{2dc6be7dabc6587e043c8d1d71ece24035e8b9a3253e508b050d46e8ba5403c2}"

CMD ["node", "server.js"]
