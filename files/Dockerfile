FROM rajinovat/modified-jenkins:latest
LABEL maintainer "Gustavo Muniz do Carmo <gustavo@esign.com.br>"

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

COPY config-maven.groovy /usr/share/jenkins/ref/init.groovy.d/
COPY default-user.groovy /usr/share/jenkins/ref/init.groovy.d/

ENV JENKINS_USER admin
ENV JENKINS_PASS welcome123

COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
