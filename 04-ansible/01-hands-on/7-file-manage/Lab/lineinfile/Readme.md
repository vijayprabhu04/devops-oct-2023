# What are we doing with this playbook?
* Using this playbook we can alter the files in remote machines.
* Module used : `lineinfile`

# Code explanation
* `playbook` 
   - This playbook helps to modify the files in remote machines.
   - If you are running this code from root user comment lines 3 & 4

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