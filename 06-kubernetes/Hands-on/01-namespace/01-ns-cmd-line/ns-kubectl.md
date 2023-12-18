# How to operate namespace using kubectl?

| Purpose                              | Command                                                           |
| -------------------------------------| ----------------------------------------------------------------- |
| list namespace in cluster            |`kubectl get namespace`                                            |
|                                      |`kubectl get ns`                                                   |
| switch from one namespace to other   |`kubectl config set-context --current --namespace=<namespace-name>`|
| check namespace we are into currently|`kubectl config view --minify | grep namespace`                    |
| Create namespace                     |`kubectl create namespace <name of namespace>`                     |
| delete namespace                     |`kubectl delete namespace <namespace>`                             |