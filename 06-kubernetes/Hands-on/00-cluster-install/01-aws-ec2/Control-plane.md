# Prerequsites
Have `t2.medium` ec2 instance installed
Make sure security group has all ports open (inbound/outbound)
Use `ubuntu` latest ami image to create EC2 instance

# Docker installation steps (master)
switch to root user `sudo su - root`
apt update
apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update
apt-cache policy docker-ce
apt install docker-ce
systemctl status docker

Reference link : https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04?source=post_page-----e845337a956--------------------------------

# Kubectl installation (master)
apt-get update
apt-get install -y apt-transport-https ca-certificates curl
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubectl

Reference link : https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/?source=post_page-----e845337a956--------------------------------

# Minikube installation (master)
sudo su - root
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
install minikube-linux-amd64 /usr/local/bin/minikube
minikube start --force
minikube status

Reference link : https://crishantha.medium.com/running-minikube-on-aws-ec2-e845337a956

# To practice in form of multinode setup use this command
minikube start --nodes 2 -p <clustename> --force
example: minikube start --nodes 2 -p multinode-demo --force

