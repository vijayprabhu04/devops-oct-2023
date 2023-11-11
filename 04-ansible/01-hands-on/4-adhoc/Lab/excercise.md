# Objective 
* Let's see some examples through which we can understand how to construct adhoc commands.

## Install package:
- Modules:
    - YUM
    - APT
- Command:
    * Centos/Redhat : ansible all -m yum -a "name=httpd state=present"
    * Ubuntu        : ansible all -m apt -a "name=httpd state=present"
- Argument:
    - state
        * present - install package
        * absent  - uninstall package

## Create directory:
- Modules:
    - file
- Command:
    * ansible all -m file -a "path=/tmp/logs state=directory mode=0755"
- Arguments:
    - path  - directory which needs to be created
    - state
        * directory - creates directory
        * file      - creates file
    - mode - file/directory permission

## File Permission change:
- Modules:
    - file
- Command:
    * ansible all -m file -a "dest=/tmp/logs mode=0600 owner=root group=root
- Arguments:
    - dest   - file permission needs to be changed
    - mode   - file/directory permission
    - owner  - set file ownership
    - group  - set file group owner

## File copy
- Modules:
    - copy
- Command:
    * ansible all -m copy -a "src=/etc/hosts dest=/hosts"
- Arguments:
    - src   - source file to be copied
    - dest  - destination in target machine
    
## Shell module
- Modules
    - shell
    - command
- Commands:
    * ansible all –m shell -a "mkdir directory-name"
    * ansible all -m shell -a “usermod -ag group user"
    * ansible all –m shell -a "/sbin/reboot"
    * ansible all -m shell -a "chmod 666 filename && chown user:group filename"

## Service manage
- Modules
    - service
- Command:
    * ansible all -m service -a "name=httpd state=started"
- Arguments:
    - state
        * started
        * restarted
        * stopped

## Additional Notes
- To perform adhoc tasks in remote machines by providing password use `--ask-pass` (or) `-k` at end of command.
- To perform adhoc tasks from non root user use `-become` (or) `-b` for privilage escalation.
- To provide non-root user password use argument `--ask-become-pass` (or) `-K`
- To target multiple groups `ansible prod:staging -m yum -a "name=ntp state=present"`
- To check number of hosts in inventory file `ansible all -m ping --list-hosts`



