# What is the use of provisioner plugin ?
- Provisioners are used to execute scripts or commands in remote machine.
- This execution will happen as part of your resource creation or destruction.
- Using provisioner you can just boot the instance and deploy the application whichever needed. 
- You can do activities such as 
    - File uploads 
    - Remote execution 
- Trigger automation tools such as Ansible, Chef etc.. 
- Terraform always recommends to use provisioner as last resort. If you not have any other option left out.
- Also it should be defined at last at your configuration file.


# Provisioner with config management tools
- Terraform allows to add chef statements in provisioner block
- Terraform allows to run puppet agent from provisioner block
- For Ansible you can first run terraform and output the IP address then run ansible playbook on those hosts.

# Functions used
* remote-exec
    - Using remote-exec provisioner invokes a scripts or command after resource is created.
    - remote-exec provisioner supports both ssh & winrm type connections.
    Arguments :
    - Inline : This is a list of command strings, which can execute in order they are provided.
* File
    - Script execution cannot be done directly.
    - Instead the script should be copied from local server to remote server and then it can be executed.

# Connection block
- To enable remote execution you need to enable connection to the newly create machine.
- The arguments required for it is 
    * Public IP address
    * EC2 user for login
    * Private key are user password


