FROM node:6-alpine
WORKDIR /src
COPY . .
RUN npm install --quiet && npm test
RUN adduser -S node-user
USER node-user
EXPOSE 4000
CMD npm start
