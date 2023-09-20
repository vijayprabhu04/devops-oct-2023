# What are we doing with this code?
* Using this code we are creating EC2 instance in AWS cloud platform.
* Additionally, we will be executing shell commands in EC2 instance using `Provisioner` plugin.
* Ensure `Security group` allows port 22 which is attached with EC2 instance.
* Ensure `pem file` is attached with machine. Provisioner uses pem file to login in EC2 instance.

# Steps to execute this code?
* `terraform init` 
   - This command will initialize the terraform in that folder.
   - Also initialize provider plugins, in our case it could download plugins which is relevant to AWS.
   - You don’t need to run this command every time, unless if there is any change in config file.

* `terraform validate`
   - To verify if your code does not have any syntax errors.

* `terraform plan`
   - This command can help you to understand what actions will be performed when your trigger the terraform file.

* `terraform apply`
   - This command will do actual implementation in your infrastructure.

# Plugins used in this code
 - Provider
 - Resource
 - Provisioner
