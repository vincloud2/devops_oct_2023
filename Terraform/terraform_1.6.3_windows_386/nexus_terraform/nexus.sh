#!/bin/bash
sudo su 
yum install docker -y 
systemctl start docker
systemctl enable docker
docker run -d -p 8081:8081 --name nexus sonatype/nexus3
