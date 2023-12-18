# What is namespace ?

* Namespaces are a way to organize clusters into virtual sub-clusters
* They can be helpful when different teams or projects share a Kubernetes cluster

# Default namespaces available in cluster

| Namespace name    | Purpose                                                                                      |
| ----------------- | -------------------------------------------------------------------------------------------- |
| `default`         | In general all pods which we create would be placed in default namespace                     |
| `kube-node-lease` | Holds objects associated with each node                                                      |
|                   | This allows the kubelet to send heartbeats so that the control plane can detect node failure |
| `kube-public`     | This namespace is mostly reserved for cluster usage                                          |
| `kube-system`     | The namespace for objects created by the Kubernetes system                                   |