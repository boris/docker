#!/bin/bash
set -e

/usr/local/bin/jenkins.sh > /dev/null &


java -jar /usr/share/jenkins/jenkins.war
