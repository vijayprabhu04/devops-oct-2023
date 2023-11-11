# Infrastructure prerequisite

- To setup `Ansible` we might need 3 machines to practice further

- All 3 machines can be installed with any Linux distributions

- 1 machine should be installed with Ansible which will be considered as `Master server`

- Other 2 machines are `target nodes` which can be managed from `Ansible master server`

# What will be installed when you install Ansible?

- Once Ansible is installed it will not add any database

- There will not be any demons to be started/stopped for Ansible

- Ansible will be installed in only once machine.

# What should be available in machines before Ansible installed?

| Master node       | Target nodes      |
| ----------------- | ----------------- |
| Python 2.x or 3.x | Python 2.x or 3.x |
| SSHPASS           |  -                |
| SSH should be up  | SSH should be up  |

# Ansible installation types 

- Ansible can be installed in 2 ways

- Through `YUM/APT package manager`

- Through `PIP python package manager`