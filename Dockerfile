# base image
FROM node:8.16.2

# set working directory
WORKDIR /app

# install and cache app dependencies
COPY . /app

RUN npm install --production --silent
RUN npm install react-scripts@3.0.1 -g --silent

# start app
CMD ["npm", "start"]

# Expose PORT 3000 on our virtual machine so we can run our server
EXPOSE 3000
 
