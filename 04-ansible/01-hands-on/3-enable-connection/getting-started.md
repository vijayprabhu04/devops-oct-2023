# Getting started to setup machines

- we have seen the basics of Ansible and how to install it, lets move further

- In this session let’s setup your inventory file with target server information and start communicating with those machines.

# Preparing Inventory file

- Edit or create your `hosts` file and update your remote systems details in it

- Your host files should look like this – either it can be `IP or Hostname`

- You can name your group name as well

  [lab]
  192.0.2.50
  answeb01
  ansdb01

- Your inventory file is ready now

# Enable SSH password less communication

- Before we get started, it’s important to understand how Ansible communicates with remote machines over the SSH protocol

- Ansible can communicate with machine in two ways

  * Using SSH keys
  * Using SSH user password

- If your communication is through SSH key then you need to generate the key from master server and publish it to your remote machines

  * ssh-keygen
  * ssh-copy-id root@servername
  * you can also manually copy the key and paste it into the authorized_keys of remote server

- If you wish the communication should be over password, it can be achieved by supplying the option [--ask-pass]

# Start communicating with your target machines

- Let's first do ping test using `ping` module

- Now try pinging all your nodes

- Key based authentication : `ansible all -m ping`

- Password based authentication `ansible all -m ping --ask-pass (-k)`

# Host Key checking

- Ansible has host key checking enabled by default

- What is host key check ?

- If the remote host is reinstalled and has a different key in [known_hosts], this will result in an error message until corrected

- Also, host key check will prompt for any new server which is deployed in Infrastructure

- If you wish to disable this behavior,  you can do so by editing ansible.cfg
  `host_key_checking = False`

# Interpreter

- What is interpreter?

  In output you might have noticed a message from all remote machines about interpreter

- What exactly it is ?

  * Most Ansible modules are written in Python

  * Hence python required an interpreter [Translator] available in each target machine when it executes the module. 

  * Ansible will attempt to discover a suitable Python interpreter on each target host the first time when Python module is executed on target host.

- How to ignore this message from output ?

  * You just need to declare the interpreter globally, by adding below line ansible.cfg under [defaults]
    `interpreter_python = /usr/bin/python3`
