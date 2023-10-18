# Git branch

* Default branch in every repository is Master (Main) branch

* Your `master` branch may contains the original code of project

* Sometime you may need to add new feature to your project at the same time you don’t want to touch or break the current state of your project

* In such cases the best solution would be creating new branch and commit all your modified project contents over there

* Once you tested your new feature and find it working fine, you can go-ahead and merge it with your `Master` branch

* You can create many number of branches as per requirement

* This approach would be helpful when several developers are working in same project and each of them can work on different branch without breaking the master code

## commands
* create branch in local

 `git branch <branch-name>`

* check what branch we are working on

  `git branch`

* check head point

  `git log` (To check Head is pointing to which branch)

* delete branch

  `git branch –D <branch name>`

- Merge creeated branch with Master (Makesure you are in Master branch to merge other branch with Master)

  `git merge <branch-name>`

