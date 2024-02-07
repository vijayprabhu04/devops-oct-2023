scenario:
# Rollout 
- One of primary usecase of deployment is to rollout newer versions of application
- We have couple of pods running with httpd version 2 and we found that this version has some bug
- To fix the bug we are going to update the higher version of httpd application
- Lets modify the <deployment>.yaml file with updated version of your image

- Changes to be done in file
```
From : image: httpd:2
To   : image: httpd:2.4
```
- Then push the changes with `kubectl apply` command
- To monitor rollouts 
* `kubectl rollout status deployment <deployment-name>`
* `kubectl rollout history deployment <deployment-name>`

- Each version changes is captured in column called REVISION from `rollout status` command
- If you want to see more details about your each revision you can use command
* `kubectl rollout history deployment <deployment-name> --revision 1`
* `kubectl rollout history deployment <deployment-name> --revision 2`

- Now if incase your new version of application has some issues you can do immediate roll back using undo
* `kubectl rollout undo deployment <deployment-name> --to-revision=1`
- Note : This action will create new revision, which is going to be basically rollback to existing revision