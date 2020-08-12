#/bin/bash
#Description: script to clean inactive docker images on docker host
#Author: helen
#Date: August 2020

for i in $(docker images | awk -f '{print$3}' | grep -v IMAGE);
do
docker rmi -f ${i}
done

