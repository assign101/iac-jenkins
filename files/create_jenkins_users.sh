#!/usr/bin/bash
while read line
do
echo "jenkins.model.Jenkins.instance.securityRealm.createAccount('$line', 'password123')" | java -jar /var/tmp/jenkins-cli.jar -s http://localhost:8080 -auth admin:welcome123 groovy =
sleep 3;
done < /var/tmp/jenkins_users.txt
