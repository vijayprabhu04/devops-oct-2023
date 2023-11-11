# What are we doing with this code?
* Using this code we are creating EC2 instance in AWS cloud platform.
* Additionally, we will be having new file called `output.tf` which hold all attribute output blocks.
* Post apply we should witness all the attributes defined in `output.tf` file should be printed in command line.

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

* `terraform output`
    - You can do terraform output any point in time even after apply which will print the results.

* `terraform output >> file.txt`
    - You can extract the output to a file.

* `terraform output public_ip`
    - You can also fetch outputs separately by calling the name.

* `terraform output ip_address >> /etc/ansible/hosts`
    - : You can extract the IP address to ansible inventory file like this.
 
* `terraform destroy`
   - This command will destroy the infrastructure as described in your terraform file.

# Plugins used in this code
 - Provider
 - Resource
 - Output

# Reference examples
  - https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/blob/master/outputs.tf