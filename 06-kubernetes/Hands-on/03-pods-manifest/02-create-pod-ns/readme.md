# Kuberenetes manifest file

- manifest files are written in yaml
- yaml files are mostly constructed in form of maps (key : pair) and lists

# objective 

- using this file we are creating pods in specific namespace

# Required fields in manifest file

| Object       | Purpose                                                                                        |
| ------------ | ---------------------------------------------------------------------------------------------- |
| `apiVersion` | Which version of the Kubernetes API you're using to create this object                         |
| `kind`       | What kind of object you want to create                                                         |
| `metadata`   | Data that helps to identify the object, including a name string, UID, and optional - namespace |

# Kubectl Command lines

| Purpose                          | Command lines                      |
| -------------------------------- | ---------------------------------- |
| How to apply manifest file       | `kubectl apply -f namespace.yaml`  |
|                                  | `kubectl create -f namespace.yaml` |
| View pods                        | `kubectl get namespace`            |
| Delete pod through manifest file | `kubectl delete -f pod.yaml`       |
