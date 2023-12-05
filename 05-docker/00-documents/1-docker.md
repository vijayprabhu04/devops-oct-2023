# What is docker?
*  Docker is just a software which is used to perform operating system virtualization
* This is also know as containerization
* These containers are isolated from each other
* Also, bundled with their own application, tools, libraries and configuration files
* Though these containers are isolated it can communicate with each other through well-defined channels
* All these containers share base operating system kernel thus its more lightweight then virtual machines

# Why docker?
* To understand docker, first lets try to understand simple scenario.
* How in general software can be installed ?
  - first we need to install operating system either in bare metal server or in virtual machine
  - post that we may need to install application on top of it
  - eventually, every one would have faced multiple issues while application installation
  - For instance, dependent software's not found `wget, curl, unzip, tar` to install
  - You will be trying hard to fix any issues which is coming upon every time when you install software
`The is the core cause which Docker is trying to fix`
* Docker wants to make easy & straight forward to install any software
* In Nutshell, real use case of docker is to install & run software without worrying about base setup or dependencies