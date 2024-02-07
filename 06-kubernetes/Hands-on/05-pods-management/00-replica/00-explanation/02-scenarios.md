# Pod Resheduling

* scenario 1
# Node non-availability
- Replicaset also helps to reshedule the pod when underlying node dies.
- To test that you can shutdown one of the node and see if the pod is getting restarted in other node
- command to be used to monitor
* `kubectl get pods -o wide`
* `kubectl get nodes`

* scenario 2
# Terminate
- You can also test by terminating some pods from replicaset
- This action will cause recreating the container again

* scenario 3
# Create PODs with exact same lables
- Strongly recommendation :
    * make sure that the bare Pods which you create apart from replicaset do not have labels which match  the selector of one of your ReplicaSets
    * The reason for this is because a ReplicaSet is not limited to owning Pods specified by its template 
    * it can acquire other Pods in the manner specified in the previous sections
- Lets try to create new pod file with same lables what we specified in replicas
- run file `manifest/pod-one.yaml`
- which has same lables specified which we have given in replicaset
- This action might cause pod termination automatically to maintain the desired state of your replica set

* scenario 4
# Create PODs with some lables matching
- Using some lables while creating POD
- run file `manifest/pod-two.yaml`
- this process with create as a seperate one not being part of replicaset

* scenario 5
# Remove pods from replicaset
- You can remove Pods from a ReplicaSet by changing their labels
* `kubectl label pod <pod-name> <lable-name>-`
- By doing this pod will not be part of replicaset anymore
- This action also cause once more POD creation by replicaset to satisfy desired state

# command to see pods with lables
* `kubectl get pods --show-labels` 