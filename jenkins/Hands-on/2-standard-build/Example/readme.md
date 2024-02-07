# Objective
- Create standard freestyle job integrated with terraform to create EC2 instance in aws

# Prerequsites
- To setup aws credentials in jenkins machine, install aws-cli from jenkins user
- curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
- sudo apt install unzip -y 
- unzip aws cli zip file `awscliv2.zip`
- cd to aws folder post unzip and do install `sudo ./install`
- run `aws configure` command which will prompt for asking access & secret key
- Ensure terraform is installed in your jenkins machine

# Tasks to do in dashboard
- Goto jenkins dashboard using machine <ipaddress:8080>
- click on `New Item`
- create `freestyle job`
- provide `name & description` for your job
- goto build area

# Add below code in build area
```
# copy code to jenkins workspace
cp -r <code-path>/* ${WORKSPACE}/

# switch to workspace and apply the config file
cd ${WORKSPACE}/ec2-creation && terraform init && terraform apply -auto-approve -lock=false
```