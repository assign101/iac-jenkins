#!/bin/bash

NODE_SLAVE_HOME='/home/jenkins'
NODE_NAME=ec2-13-239-112-204.ap-southeast-2.compute.amazonaws.com
EXECUTORS=1
SSH_PORT=22
CRED_ID=jenkins_build
LABELS=linux_build
USERID=farhan

cat <<EOF | java -jar /var/tmp/jenkins-cli.jar -s http://127.0.0.1:8080 -auth admin:welcome123 create-node "aws build agent"
<slave>
  <name>aws build agent</name>
  <description></description>
  <remoteFS>${NODE_SLAVE_HOME}</remoteFS>
  <numExecutors>${EXECUTORS}</numExecutors>
  <mode>NORMAL</mode>
  <retentionStrategy class="hudson.slaves.RetentionStrategy$Always"/>
  <launcher class="hudson.plugins.sshslaves.SSHLauncher" plugin="ssh-slaves@1.5">
    <host>${NODE_NAME}</host>
    <port>${SSH_PORT}</port>
    <credentialsId>${CRED_ID}</credentialsId>
    <sshHostKeyVerificationStrategy class="hudson.plugins.sshslaves.verifiers.ManuallyTrustedKeyVerificationStrategy"/>
  </launcher>
  <label>${LABELS}</label>
  <nodeProperties/>
  <userId>${USERID}</userId>
</slave>
EOF
