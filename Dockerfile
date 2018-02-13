FROM node:6-alpine
RUN addgroup -S node
RUN adduser -S node-user -G node
USER node-user
WORKDIR /src
COPY . .
RUN npm install --quiet && npm test
EXPOSE 4000
CMD npm start
