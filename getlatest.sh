#!/bin/bash
#Kill the existing PID
kill -9 $(jps | grep jar | awk {'print $1'})

# Artifactory location
server=http://159.89.166.239:8040/artifactory
repo=libs-release-local
# Maven artifact location
name=spring-petclinic
artifact=org/springframework/samples/$name
path=$server/$repo/$artifact
version=`curl -u admin:password -s $path/maven-metadata.xml | grep latest | sed "s/.*<latest>\([^<]*\)<\/latest>.*/\1/"`
jar=$name-$version.jar
url=$path/$version/$jar
curl -u admin:password -o devops-demo.jar $url

# Run the jar file in backgroud
#nohup java -jar devops-demo.jar >/dev/null 2>&1 & 
java -jar devops-demo.jar &
