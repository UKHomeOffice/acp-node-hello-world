FROM node:6-alpine
USER node-user
WORKDIR /src
COPY . .
RUN npm install --quiet && npm test
RUN adduser -S node-user
EXPOSE 4000
CMD npm start
