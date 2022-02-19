FROM node:alpine
RUN mkdir /unichatjs-server
WORKDIR /unichatjs-server
COPY bin ./bin
COPY dist ./dist
COPY package.json .
RUN npm install --production
EXPOSE 9000
ENTRYPOINT ["node", "bin/unichatjs"]
CMD [ "--port", "9000", "--path", "/myapp" ]
