# Remote state file
- By default backend = local [hence it will just save your terraform state file locally]
- Keeping state file locally might help in beginning, but when your project become bigger you might want to store your state in remote location.
- The `terraform state` file can be saved in remote location, using backend functionality in terraform.
- You can keep `terraform.tfstate` file in version control. Eg : Git, Bitbucket, S3 bucket etc..
- It gives you a history of your `terraform.tfstate` file.
- Using backend functionality benefits in collaboration, because remote state will be available for whole team.

# How to configure remote state
- Add backend code to backend.tf file
- Run the initialization process
- Point to be noted :
    - `backend.tf` file will not accept variables.
    - `backend.tf` file will not accept credentials from `vars` file
    - `terraform init` should be done after every modification in `backend.tf` file

# Configure S3 bucket
- Lets first configure S3 bucket in AWS. 
- Short intro about S3 bucket : It is an object storage service provided by Amazon for customers. 
    * S3 bucket should contain unique name.
    * Permission should be kept public.
    * Create folder called terraform in bucket
