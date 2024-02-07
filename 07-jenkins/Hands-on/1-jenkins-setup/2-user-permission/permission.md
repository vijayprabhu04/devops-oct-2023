# Initial setup
- check if jenkins user is created 
  `id jenkins`

- Ensure jenkins has bash shell 
  `cat /etc/passwd`
   check if this line is present in file `jenkins:x:114:120:Jenkins,,,:/var/lib/jenkins:/bin/bash`

- Provide full privilage for jenkins user
  * switch to root user `sudo su`
  * goto sudoers file `visudo`
  * add line `%superadmin ALL=(ALL)       NOPASSWD: ALL`
  * `groupadd superadmin`
  * `usermod -aG superadmin jenkins`

- Check if jenkins has all access
  * switch to jenkins user `sudo su - jenkins`
  * `sudo -l`
  