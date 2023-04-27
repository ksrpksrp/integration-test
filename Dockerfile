# base image
FROM node:14
# setting work directory
WORKDIR /e2e
# copying package.json to container
COPY package.json ./
# Installing dependencies
RUN npm install
# Install cypress
RUN npm install cypress --save-dev typescript
#set default commands
CMD ["npm", "test"]
