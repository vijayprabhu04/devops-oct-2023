# What are we doing with this playbook?
* Using this playbook we are installing packages in remote machines.
* Restarting services are handled through handler.

# Code explanation
* `playbook` 
   - This playbook install apache packages in remote machines.
   - If you are running this code from root user comment lines 3 & 4
   - Note : 
        * This code can run only in centos/rhel based machines.
        * If target machine is ubuntu change package manager as `apt`

# How to execute playbook?
 - Run playbook on hosts defined in inventory file (default)
   `ansible-playbook playbook_name.yml`

 - Running playbook by passing password
   root user password     : `ansible-playbook playbook_name.yml –k`
   non-root user password : `ansible-playbook playbook_name.yml –K`

 - Run Playbook on single host
   `ansible-playbook playbook_name.yml -i hostname1, hostname2`

 - Run Playbook on custom inventory file
   `ansible-playbook -i inventoryfilename playbook_name.yml`
   
 - Playbook Dry run
   `ansible-playbook playbook_name.yml –check`