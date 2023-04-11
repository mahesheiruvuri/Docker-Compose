# Docker-Compose

Step1: Create a Network
eg: docker network create webtraffic-network

step2: start redis and attach to the above created network. eg: docker run -it -p 6379:6379 --name myredis --network webtraffic-network redis

step3: update application index.js file with redis container port name and ip details.

step4: create a Dockerfile

step5: Build web application docker image eg: docker build -t webtrafficapp .

step6: run webtraffic container and attach to the created network. eg: docker run -it -p 9999:9999 --name webtraffic-network webtrafficapp

If you face issue while issuing "docker-compose up --build" command follow the below steps to fix it

 sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

 sudo chmod +x /usr/local/bin/docker-compose
 
 sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
 
 docker-compose --version
 
 now issue - docker-compose up --build
   
