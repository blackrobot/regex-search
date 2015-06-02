# A simple container to run grunt

FROM node:0.12

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install -g grunt-cli

# Add the package.json and install grunt's dependencies
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

ENTRYPOINT grunt
