# pip is python package manager which is used to install python packages

# Ansible can also be installed using python-pip because ansible is developed using Python

# Python 2.x
| Task                   | Redhat/Centos                | Ubuntu                       |
| -----------------------| -----------------------------| -----------------------------|
| Pip installation       | `yum install python-pip`     | `apt install python-pip`     |
| Ansible install        | `pip install ansible`        | `pip install ansible`        |
| Ansible uninstall      | `pip uninstall ansible`      | `pip uninstall ansible`      |
| Ansible core uninstall | `pip uninstall ansible-core` | `pip uninstall ansible-core` |

# Python 3.x
| Task                   | Redhat/Centos                 | Ubuntu                        |
| ---------------------- | ----------------------------- | ----------------------------- |
| apt update             |                               | `apt update`                  |
| Pip installation       | `yum install python3-pip`     | `apt install python3-pip`     |
| Ansible install        | `pip3 install ansible`        | `pip3 install ansible`        |
| Ansible uninstall      | `pip3 uninstall ansible`      | `pip3 uninstall ansible`      |
| Ansible core uninstall | `pip3 uninstall ansible-core` | `pip3 uninstall ansible-core` |

# How to check whether ansible is installed or not ?

`ansible --version`
