# AnsibleLab

### What is this repository for? ###

* This is my play ground for testing my ideas for Ansible with AWS and Vagrant.
* If it's possible to play with my ideas locally, I will use Vagrant.
* For testing on AWS, I will create resources in us-west-2 US West (Oregon)
  You can get the official AWS region list [here](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)


### Windows ###

* It shows how easy it is to provision Windows with ansible. 
  * 3 roles are demostrated, each can be added to a playbook depend on their use case. 
    * For example, iis playbook include iis and core role. Utilies playbook include win role, which would install 3 programes. 
  * 2 Windows servers will be provisioned. 
    * depend on which version of windows, action can be skipped, for example GUI for Windows 2016.
* cd Windows, vagrant up, and either ansible-playbook utiles.yaml or iis.yaml. 
  * Both playbooks apply to both Win2016 and Win2012.
  * Since Win2016 doesn't support swith on/off Gui, Condition is demostrated with AND and NOT.


### AWS ###

* The frame work is complete, I will upload roles, vars and playbooks one by one, eventually making it a complete environment on AWS. 
* cd AWS, cd plays, and run something like ansible-playbook provision/ec2/test/us-west-2/vpc.yml -i ../inventory/ec2.py
* export AWS_ACCESS_KEY_ID='your access key'
  export AWS_SECRET_ACCESS_KEY='your secret key'
  If you don't have aws profile properly defined yet, make sure you have set above environment variables before run asible. 
  * if it's properly defined, add AWS_PROFILE=profilename in front of the ansible-playbook command. 
    * To switch to another aws account requires 2fa, `source switchrole_2fa.sh` will get the environment variable set properly. 
* To show the structure, vault password file is included in this repo, but there is only place holder in files been encrypted 

### Who do I talk to? ###

* victor.ma@gmail.com

