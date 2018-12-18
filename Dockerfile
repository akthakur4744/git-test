# base image
FROM node:9

# set working directory
WORKDIR /app

# # add `/src/app/node_modules/.bin` to $PATH
# ENV PATH /src/app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app
RUN npm install
COPY . /app

# start app
CMD ["npm", "start"]

EXPOSE 3001