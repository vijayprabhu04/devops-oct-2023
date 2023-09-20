# What are we doing with this code?
 - Using this code we are creating EC2 instance in AWS cloud platform.
 - Additionally we will be using variables.
 - AMI image ID will be provided from command line at run time

# Steps to execute this code?
* `terraform init` 
   - This command will initialize the terraform in that folder.
   - Also initialize provider plugins, in our case it could download plugins which is relevant to AWS.
   - You don’t need to run this command every time, unless if there is any change in config file.

* `terraform validate`
   - To verify if your code does not have any syntax errors.

* `terraform plan -var 'AMI=ami-0c1a7f89451184c8b`
   - This command can help you to understand what actions will be performed when your trigger the terraform file.

* `terraform apply -var 'AMI=ami-0c1a7f89451184c8b`
   - This command will do actual implementation in your infrastructure.

* `terraform destroy`
   - This command will destroy the infrastructure as described in your terraform file.

# Plugins used in this code
 - Provider
 - Resource
