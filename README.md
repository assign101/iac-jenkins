  
# Build Jenkins Instance as Docker in AWS

There is requirement to build new jenkins for the new Kubernetes cluster 1.14.1

## Usage 

Change the inventory.yml file to provide the jenkins instance name, VPC ID, subnets, ssh_private_key  etc
Run the below command to install the jenkins instance

```bash
ansible-playbook ec2_jenkins.yml -i localhost,
```
This playbook will create the below components<br/>
<br/>
a) EC2 instance<br/>
b) format/mount EBS volume for jenkins data <br/>
c) install/enable docker <br/> 
d) install jenkins as docker and use EBS volume for the /var/jenkins_home <br/>
e) Create Application Load balancer and target groups <br/>
f) Add instance into ALB <br/>
g) Create route53 entry to point new jenkins to ALB <br/>


## Access the jenkins 
ansible playbook will print out the new jenkin url , new url will be "jenkins_instance_name"


## Configure the jenkins 
ansible playbook will print the last line as initial password to configure the jenkins 


## Solution covers the following deliverables:
1)	A GITHUB repo to demonstrate Infrastructure provisioning templates/files to provision Jenkins.
         
2)	A GITHUB repo to demonstrate Infrastructure provisioning templates/files to provision “your JAR/WAR” Application environment
3)	Provisioned infrastructure should be well defined with proper tagging and naming conventions.
4)	Provisioned infrastructure and deployed services should be secured and have well defined security groups and ACL’s to restrict access.
5)	Deploy “Your JAR/WAR” file using the CI/CD pipeline to Test.
6)	Instrumentation of CI/CD pipelines with monitoring to present number of deployments, using a presentation layer like Grafana.

A High-level architecture to demonstrate how you approached the problem and your solution is required.
Explanation of the code and working demo of Jenkins pipeline is required.


