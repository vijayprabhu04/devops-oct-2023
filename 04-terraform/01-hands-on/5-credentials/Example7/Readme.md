# What are we doing with this code?
* Using this code we are creating EC2 instance in AWS cloud platform.
* Credentials will not be hardcored asusual in this code, instead we will be using aws_cli command line tool to store credentials in secured way.

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

* `terraform destroy`
   - This command will destroy the infrastructure as described in your terraform file.

# Plugins used in this code
 - Provider
 - Resource