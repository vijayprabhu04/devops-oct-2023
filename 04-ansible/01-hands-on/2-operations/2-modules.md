# What is modules ?

- Modules are programs that Ansible uses to perform operations on managed hosts

- They are ready-to-use tools designed to perform specific operations

- Modules can be executed from the Ansible command line or used in playbooks to execute the tasks

# Three Type of Modules :

  * Core Modules : These modules are written and maintained by Ansible development team. Core modules are most important modules and are used for common administrative tasks

  * Extra Modules : These modules are developed by the community

  * Custom Modules : These modules are mostly developed by end users itself

- If a module not already exist for a task, an admin can create by its own which is called  custom ones 

- Modules are written in Python

# Sample Modules

- Ansible ships several hundreds of modules today, some samples are

  * apt/yum
  * copy
  * file
  * ping
  * service
  * git
  * get_url
  * shell

# Finding Module information’s from Command line

- You can retrieve all the modules and use case of modules from machine where Ansible is installed

  `ansible-doc –l`
  `ansible-doc -l | grep copy`
  `ansible-doc copy`

# Run Modules

- If Ansible doesn’t have a module that suits your needs, there are some `run command` modules

  * `command`: Takes the command and executes it on the host. The most secure and predictable

  * `shell`: Executes through a shell like /bin/sh so you can use pipes etc. Be careful

  * `script`: Runs a local script on a remote node after transferring it

# Where to find all the modules?

https://docs.ansible.com/ansible/latest/collections/index.html#list-of-collections
