#!/bin/bash
sudo su 
yum install docker -y 
systemctl start docker
systemctl enable docker
docker run -d --name myjenkins -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts