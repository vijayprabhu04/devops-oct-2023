# Git Checkout

* checkout helps us in 2 ways

    - checkout between commits
    - checkout to different branches

* using checkout we can go back in time & check historical state of our files

* checkout is very safe command to use to switch between commits because its read only

* This can proved by going back to previous state file and modify something and make a commit. However this commit is not going to result anywhere

### Roll back to previous commit using head id

| Task                  | Command                         | Notes                                             |
| --------------------- | --------------------------------|---------------------------------------------------|
| checkout              | `git checkout <head-id>"`       | move head to specified commit ID                  |
| checkout              | `git checkout master`           | move back to main branch again                     |

### Simple scenario to prove checkout is readonly :

* do checkout to any of your previous commit `git checkout <head-id>`

* modify any of existing file

* stage the file & make test commit

  `git status & git log` command is going to show you the commit

* go back to current head using `git checkout master` your new test commit will be no longer exist.

### checkout command to switch between branches

`git checkout <branch-name>`