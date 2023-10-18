# Description
* From this example we can understand how you can secure your credentials using AWS command line utility.
* To do this first we need to install `aws cli` tool in your virtual machine.
* Follow the below steps to install `aws cli`

# Configure aws cli
- Install curl, unzip in your machine.
    Linux commands:
    - `yum install wget curl -y`
    - `yum install unzip -y`
   Ubuntu commands:
    - `apt install wget curl unzip -y`
- curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 
- unzip aws cli zip file `awscliv2.zip`
- cd to `aws` folder post unzip and do install `./install`
- run `aws configure` command which will prompt for asking access & secret key
- Enter your AWS credentials asked for in command line.
- Then you can see credentials are stored as environment variable under file ~/.aws/credentials
- Just do cat  ~/.aws/credentials to view the file.
