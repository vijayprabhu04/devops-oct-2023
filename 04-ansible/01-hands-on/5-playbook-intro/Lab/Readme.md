# What are we doing with this playbook?
* Using this playbook we are installing packages in remote machines.

# Code explanation
* `playbook_0` 
   - This playbook install 2 packages in remote machines.
   - If you are running this code from root user comment lines 3 & 4
   - Note : 
        * This code can run only in centos/rhel based machines.
        * If target machine is ubuntu change package manager as `apt`
        * This playbook can break in between if incase of any errors.

* `playbook_1`
    - This playbook is similar to `playbook_0`
    - Additionally, argument `ignore_errors: true` is added to avoid playbook breaks due to error.

* `playbook_2`
    - This playbook is similar to `playbook_0`
    - Additionally, module `gather_facts: yes` is added to collect remote machine details.
        * Note : by default facts set to true even if it is not specified.
    - Additionally, module `ignore_errors: true` is added to avoid playbook breaks due to error.
    - Additionally, module `check_mode: true` is enabled to do dry run of playbook.

* `playbook_3`
    - This playbook is similar to `playbook_0`
    - Major difference is modules and arguments are defines as one liner using `=`

# Modules used
 - yum
 - service
 - gather_facts
 - ignore_errors
 - check_mode

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
   `ansible-playbook playbook_name.yml --check`

# Key point 
 - Ansible retry file :
   * When Ansible has problems running plays against a host, it will output the name of the host into a  file in the user's home directory ending in `.retry`
   * You can enable or disable this from `ansible.cfg` file based on requirement.
   * How to enable/disable it?
    Goto `ansible.cfg` file and set `retry_files_enabled = False`




