(cd roles/; ./download_roles.sh)
vi hosts
# Setup the environment
ssh-keygen # generate a ssh key right here for testing ./id_rsa

ssh -i id_rsa ubuntu@{{the_remote_box_address}}
# should be Permission denied (publickey). 

ansible-playbook Add_SSH_pub_key_remote.yml
ssh -i id_rsa ubuntu@{{the_remote_box_address}}
# Should be able to login

ansible-playbook Remove_SSH_pub_key_remote.yml
ssh -i id_rsa ubuntu@{{the_remote_box_address}}
# should be Permission denied (publickey). 
