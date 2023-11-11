# Step 1 : First enable package repository

- Redhat

* In Redhat you can enable `ansible` package repo using subscription manager

* Note : To run subscription manager commands your machines should be licensed


| Task                | Redhat                                                                   |
| ------------------- | ------------------------------------------------------------------------ |
| Enable ansible repo | `subscription-manager repos --enable ansible-2.8-for-rhel-8-x86_64-rpms` |  
|                     | `subscription-manager repos --enable rhel-7-server-ansible-2.8-rpms`     |

- Centos

| Task             | Centos                                                                               |
| ---------------- | ------------------------------------------------------------------------------------ |
| Enable epel repo | `yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm` |
|                  | `yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm` |

- Ubunutu

| Task                | Ubuntu                                                  |
| --------------------| ------------------------------------------------------- |
| Enable ansible repo | `apt install software-properties-common`                |
|                     | `apt-add-repository --yes --update ppa:ansible/ansible` |

# Step 2 : Ansible installation

| Task                          | Redhat/Centos              | Ubuntu                                 |
| ----------------------------- | -------------------------- | -------------------------------------- |
| Install from root user        | `yum install ansible`      |                                        |
| Install from non-root user    | `sudo yum install ansible` |                                        |
| apt update from root user     |                            | `apt update`                           |
| Install from root user        |                            | `apt install ansible`                  |
| apt update from non-root user |                            | `sudo apt update`                      |
| apt update from non-root user |                            | `sudo apt install ansible`             |
| uninstall from root user      | `yum remove ansible`       | `apt remove ansible ansible-core`      |
| uninstall from non-root user  | `sudo yum remove ansible`  | `sudo apt remove ansible ansible-core` |


# How to check whether ansible is installed or not ?

`ansible --version`
