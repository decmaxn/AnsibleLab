# AnsibleLab

### What is this repository for? ###

* This is my play ground for testing my ideas for Ansible with AWS and Vagrant.
* If it's possible to play with my ideas locally, I will use Vagrant.
* For testing on AWS, I will create resources in us-west-2 US West (Oregon)
  You can get the official AWS region list [here](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)


### Windows ###

* It shows how easy it is to provision Windows with ansible. 
* cd Windows, vagrant up, and either ansible-playbook utiles.yaml or iis.yaml. 


### AWS ###

* The frame work is complete, I will upload roles, vars and playbooks one by one, eventually making it a complete environment on AWS. 
* cd AWS, cd plays, and run something like ansible-playbook provision/ec2/test/us-west-2/vpc.yml -i ../inventory/ec2.py
  export AWS_ACCESS_KEY_ID='your access key'
  export AWS_SECRET_ACCESS_KEY='your secret key'
  Make sure you have set above environment variables before run asible. 
* To show the structure, vault password file is included in this repo, but there is only place holder in files been encrypted 

### Who do I talk to? ###

* victor.ma@gmail.com

