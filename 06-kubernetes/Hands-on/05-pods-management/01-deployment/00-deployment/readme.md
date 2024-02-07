# Kuberenetes manifest file
- manifest files are written in yaml
- yaml files are mostly constructed in form of maps (key : pair) and lists

# what is deployment?
- Deployment wrap up Pods & ReplicaSets into a nice package
- Deployment is a higher abstraction that manages one or more replicaset
- Also deployment helps to rollout newer version of application to all pods

# objective 
- using this file we are creating deployment which could create desired number of pods
- this will be helpful in enabling high availability of your application by running it in multiple pods
- also it is easy to rollout newer version of application on all pods

# Explanation
- To understand this code divide this file into 2 parts
- until template its going to be the contents belongs to deployment 
- whatever defined after template is going to be pod contents

# Lables 
- lables are `key : value` pairs that are generally attached to PODS
- lables are kind of tags that are assigned to one or more PODS which can relate togather
- This can help us in managing and grouping pods togather as a set instead of individual
- Eg. we have attached multiple tags which could help us to identify all the PODS attached with this tags

# Selectors
- Replicaset uses `selectors` to manage all PODS created as part of this replicaset
- We can use matchlables to query the PODS using their labels


# Required fields in manifest file

| Object       | Purpose                                                                                        |
| ------------ | ---------------------------------------------------------------------------------------------- |
| `apiVersion` | Which version of the Kubernetes API you're using to create this object                         |
| `kind`       | What kind of object you want to create                                                         |
| `metadata`   | Data that helps to identify the object, including a name string, UID, and optional - namespace |
| `spec`       | What state you desire for the object                                                           |

# Kubectl Command lines

| Purpose                          | Command lines                                      |
| -------------------------------- | -------------------------------------------------- |
| How to apply manifest file       | `kubectl apply -f deployment.yaml`                 |
|                                  | `kubectl create -f deployment.yaml`                |
| Apply in specific namespace      | `kubectl apply -f deployment.yaml -n <namespace>`  |
| Get replicaset information       | `kubectl get deployment`                           |
|                                  | `kubectl get deployment -o wide`                   |
| Retrive replicaset with name     | `kubectl get deployment <deployment-name>`         |
|                                  | `kubectl get deployment <deployment-name> -o wide` |
| Replicaset describe              | `kubectl describe deployment`                      |
|                                  | `kubectl describe deployment <deployment-name>`    |
|                                  | `kubectl describe deploy`                          |
| Filter pods by label             | `kubectl get pods -L tire=frontend`                |
| View pods                        | `kubectl get pods`                                 |
|                                  | `kubect describe pods`                             |
| Delete pod through manifest file | `kubectl delete -f replica.yaml`                   |
| Login into container             | `kubectl exec -it <pod-name> bash`                 |
| Logs of each container           | `kubectl logs <pod-name>`                          |