  
# Build Jenkins Instance as Docker in AWS

As part of the Neo Airlines Infrastructure this repository containts the implementation of Jenkins Infrastructure Provision Ansible Scripts

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


