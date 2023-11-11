# SSHPASS is a package used to enable non-interactive communication between machine using password

| Task                  | Redhat/Centos                                                                         | 
| ----------------------| --------------------------------------------------------------------------------------|
| Enable epel repo      | yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm |
| Enable config manager | yum-configuration-manager --enable epel                                               |

| Task                            | Redhat/Centos            | Ubuntu                   |
| --------------------------------| -------------------------|--------------------------| 
| Install SSHPASS (root user)     | yum install sshpass      | apt install sshpass      |
| Install SSHPASS (non-root user) | sudo yum install sshpass | sudo apt install sshpass |

