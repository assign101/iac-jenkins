  # NEO Airline’s Digital Engineering Platform

# Background

Neo airline is investing in digital transformation initiatives to address the market and competitive forces that are consolidating through disruptive business models. IT is playing a central role in the digital enablement program with key focus on building strong technology foundations and customer center capabilities. Key focus areas to enhance delivery capabilities are to harness the potential of hybrid cloud, data and analytics, Automation, DevOps and Site reliability practices.

# Challenges
One of the initiatives undertaken by the NEO Airline’s Digital engineering team is to build unified middleware service layer using microservices architecture to serve Omni channels (like desktop app, IOS/Android app and other services). Due to complex technology landscape and systemic issues around environments, the changes to the products are moving too slowly. “Business would come up with a million ideas that would dazzle the end customer, and we’d just tell them, out of your list, pick the two things you’d like to get in the next 6–12 months”. Business had tried hiring and outsourcing their way out of the problem, but nothing had worked. 

# Solution Architecture
Due to a complex technology landscape and systemic issues around environments, it is recommended to deploy the next generation digital engineering platform for Neo Airlines. 
Kubernetes enterprise strategic platform will align with the Neo Airlines Digital Engineering strategy for  a scalable reliable, resilient platform cloud strategy.

One of the main benefits of containerisation is the ability to speed up the process of building, testing, and releasing software. Kubernetes is designed for deployment, and offers several useful features:
– Automated rollouts and rollbacks: Want to roll-out a new version of the app or update its configuration? Kubernetes will handle it for you without downtime, while monitoring the containers’ health during the roll-out. In case of failure, it automatically rolls back.
– Canary Deployments: Canary deployments enable you to test the new deployment in production in parallel with the previous version, before scaling up the new deployment and simultaneously scaling down the previous deployment.
– Programming languages and frameworks support: Kubernetes support a wide spectrum of programming languages and frameworks like Java, Go, .Net, etc. Kubernetes also has a lot of support from the development community, who maintain additional programming languages and frameworks. If an application can run in a container, it should run well on Kubernetes.


                                        ![](images/architecture.png)
                                        
                                      
# Key benefits of the solution:                                        
# Impressive heritage:
Kubernetes has a very mature and proven underlying architecture. Its design is built on over 10 years of operational experience of the Google engineers who helped build and maintain the largest container platform in the world.
# Rich feature set and application support:
Kubernetes has a very rich feature set compared to other container management systems. It supports a wide spectrum of workloads, programming languages and frameworks, enabling stateless, stateful, and data-processing workloads. and making Kubernetes flexible enough to meet the needs of a wide range of users and use cases.
# Workload Scalability
Kubernetes is known to be efficient in its use of infrastructure resources and offers several useful features for scaling 
# purposes:
– Horizontal infrastructure scaling: Kubernetes operates at the individual server level to implement horizontal scaling. New servers can be added or removed easily.
– Auto-scaling: With auto-scaling you can automatically change the number of running containers, based on CPU utilisation or other application-provided metrics.
– Manual scaling: You can manually scale the number of running containers through a command or the interface.
– Replication controller: The Replication controller makes sure your cluster has a specified number of equivalent pods (a group of containers) running. If there are too many pods, the Replication Controller terminates the extra pods. If there are too few, it starts more pods.
Neo Airlines container platform is built on AWS EKS(Elastic Kubernetes Service) . Amazon EKS Kubernetes is designed to tackle the availability of both applications and infrastructure, making it indispensable when deploying containers in production.

# EKS Logical Architecture


[](images/eks.png)

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
ansible playbook will print out the new jenkin url , new url will be "jenkins_instance_name".opendev.engineering

## Configure the jenkins 
ansible playbook will print the last line as initial password to configure the jenkins 


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.
