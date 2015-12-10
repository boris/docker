FROM ubuntu:12.04
FROM jenkins
MAINTAINER Boris Quiroz <boris@insert-coin.org>


COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
EXPOSE 22
EXPOSE 8080
EXPOSE 50000

COPY jmeter_tests_plans/panel.jmx 
