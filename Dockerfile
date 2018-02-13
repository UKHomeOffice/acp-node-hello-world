FROM node:6-alpine
RUN adduser -S node-user
USER node-user
WORKDIR /src
COPY . .
RUN npm install --quiet && npm test
EXPOSE 4000
CMD npm start
