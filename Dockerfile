# Base image 
FROM node:alpine

# WORKing director location 
WORKDIR /home/ec2-user/mydocker/webtraffic

#install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

#start up command
CMD ["npm", "start"] 
