# How to push your code to git without providing password at command line

## Token based

* Generate your token from developer setting in your github profile
* Run this command in terminal `git config --global credential.helper store`
* Above command will generate hidden file `cat ~/.git-credentials`
* Makesure you are setting up your origin with https based url of your repo
* Post this do asusual `git push` which will ask for `username/token`
* Now `username/token` will be preserverd in credential file which can used for further push/pull
