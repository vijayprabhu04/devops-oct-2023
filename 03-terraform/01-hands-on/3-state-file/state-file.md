# What is state file ?
* Terraform keeps the remote state of the Infrastructure.
* You might have noticed, two file in terraform directory post after terraform apply.
  `terraform.tfstate`
   `terraform.tfstate.backup`
* When you run terraform apply, these files will be created and written by terraform.
* tfstate file is used to store the current state of infrastructure.
* tfstate.backup file is used to store the backup of previous state [N-1]
* This is how terraform keeps track of the remote state.
* To be precise using state file terraform helps to enable `idempotance` in your infrastructure.

# This work in 2 ways :
* Assume, you have written `main.tf` file to create instance with Tag name `HTTP SERVER`
now you are rewriting `main.tf` file to change the Tag name as `HTTPS SERVER` and hit terraform apply. Now this is not going to disturb your machine by any means instead it will just modify the Tag name.

* In other way around, lets say if you terminate the instance from console which is managed by terraform, after terraform apply it will be created again.
