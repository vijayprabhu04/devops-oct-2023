# Install jenkins steps

# Prerequsites
- java
- ca-certificates

# Ubuntu 
- sudo apt update
- sudo apt install default-jre -y
- sudo apt install openjdk-11-jdk -y
- sudo apt install openjdk-11-jre-headless -y
- sudo apt-get install default-jdk -y
- sudo apt install ca-certificates -y
- sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
- sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
- sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9B7D32F2D50582E6
- sudo apt update
- sudo apt install jenkins -y
- sudo systemctl start jenkins 

# Centos
- sudo yum install java-1.8.0-openjdk-devel
- sudo wget –O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
- sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
- sudo yum install jenkins
- systemctl start jenkins


# Verification
- jenkins --version
- systemctl start/stop/restart jenkins
- id jenkins
- sudo su - jenkins