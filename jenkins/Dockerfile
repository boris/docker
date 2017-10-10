FROM java:8-jdk
MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apt-get update && apt-get install -y wget git curl zip supervisor && rm -rf /var/lib/apt/lists/*

ENV JENKINS_HOME /var/jenkins_home
ENV JENKINS_SLAVE_AGENT_PORT 50000
RUN useradd -d "$JENKINS_HOME" -u 1000 -m -s /bin/bash jenkins

RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
RUN mkdir -p /var/log/supervisor

# Jenkins home
VOLUME /var/jenkins_home

# Get Jenkins
ENV JENKINS_VERSION latest
RUN curl -fL http://mirrors.jenkins-ci.org/war-stable/$JENKINS_VERSION/jenkins.war -o /usr/share/jenkins/jenkins.war 

ENV JENKINS_UC https://updates.jenkins-ci.org
RUN chown -R jenkins "$JENKINS_HOME" /usr/share/jenkins/ref /var/log/supervisor

COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8080
EXPOSE 50000

CMD ["/usr/bin/supervisord"]
