# base image
FROM node:9

# set working directory
RUN mkdir /src/app
WORKDIR /src/app

# # add `/src/app/node_modules/.bin` to $PATH
# ENV PATH /src/app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /src/app/package.json
RUN npm install

# start app
CMD ["npm", "start"]

EXPOSE 3000