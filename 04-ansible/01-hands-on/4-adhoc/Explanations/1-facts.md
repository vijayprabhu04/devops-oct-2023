# Ansible Facts

- Facts are basically used to get the complete information about your remote systems.

- These can be used to implement conditional execution of tasks but also just to get ad-hoc information about your system.

- You can see all facts via below command.

  `ansible all -m setup`
   using Grep :
   `ansible all -m setup | grep ansible_os_family`
   `ansible all -m setup | grep ansible_architecture`
   `ansible all -m setup | grep fstype`
   
- We shall discuss more about Facts in the playbooks section.
