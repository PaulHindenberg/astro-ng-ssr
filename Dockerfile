FROM node:16

# Create app directory
WORKDIR /usr/src/app


COPY /server .
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

COPY /dist ./dist

EXPOSE 8080
# RUN ["/bin/bash", "-c", "echo ==> ready for jumping to the cmd"]

CMD [ "node", "server.js" ] 
