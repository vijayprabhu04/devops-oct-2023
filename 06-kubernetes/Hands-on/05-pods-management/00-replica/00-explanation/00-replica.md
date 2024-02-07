# Kuberenetes manifest file

- manifest files are written in yaml
- yaml files are mostly constructed in form of maps (key : pair) and lists

# what is replicaset?

- A ReplicaSet is a process that runs multiple Pod and keeps the specified number of Pods constant. 
- Its purpose is to maintain the specified number of Pod running in a cluster at any given time 
- This prevent users from losing access to their application when a Pod fails or is inaccessible.  

# objective 

- using this file we are creating replicaset which could create desired number of pods.
- this will be helpful in enabling high availability of your application by running it in multiple pods

# Explanation

- To understand this code divide this file into 2 parts
- until template its going to be the contents belongs to replicaset 
- whatever defined after template is going to be pod contents.

# Lables 

- lables are `key : value` pairs that are generally attached to PODS
- lables are kind of tags that are assigned to one or more PODS which can relate togather
- This can help us in managing and grouping pods togather as a set instead of individual
- Eg. we have attached multiple tags which could help us to identify all the PODS attached with this tags

```
labels:
    app: apache
    tier: frontend
    env: dev
```

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
| How to apply manifest file       | `kubectl apply -f replica.yaml`                    |
|                                  | `kubectl create -f replica.yaml`                   |
| Apply in specific namespace      | `kubectl apply -f replica.yaml -n <namespace>`     |
| Get replicaset information       | `kubectl get replicaset`                           |
|                                  | `kubectl get replicaset -o wide`                   |
| Retrive replicaset with name     | `kubectl get replicaset <replicaset-name>`         |
|                                  | `kubectl get replicaset <replicaset-name> -o wide` |
| Replicaset describe              | `kubectl describe replicaset`                      |
|                                  | `kubectl describe replicaset <replicaset-name>`    |
|                                  | `kubectl describe rs`                              |
| Filter pods by label             | `kubectl get pods -L tire=frontend`                |
| View pods                        | `kubectl get pods`                                 |
|                                  | `kubect describe pods`                             |
| Delete pod through manifest file | `kubectl delete -f replica.yaml`                   |
| Login into container             | `kubectl exec -it <pod-name> bash`                 |
| Logs of each container           | `kubectl logs <pod-name>`                          |
