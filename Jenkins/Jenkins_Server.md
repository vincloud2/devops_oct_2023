
# connect to root
- sudo su 

# update the Linux
- yum update -y

# to install docker 
- yum install docker -y

# to start the docker services
- systemctl start docker


# to Enable the docker services

- systemctl enable docker


# To run jenkins server using docker image

- docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts


# to run jenkins container always even when the servers restarts

- docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts --restart unless-stopped


# How to check the docker all running containers
- docker ps -a
- docker ps 


# to start the docker conatiner 
docker start "container_id"


# how to enter inside the container 

 - docker exec -it "container_id" /bin/bash 



