# How to create pods from command line?

# create pod

`kubectl run <name of pod> --image=<name of the image>`
`kubectl run apache --image=httpd`

# create pod in specific namespace

- Creating pod in specific namespace can be done in 2 ways
- first switch to namespace and create
- second without switching to namespace you can create with some additional argument
  `kubectl run apache-1 --image=httpd -n <namespace>`

# check pod status

| Command                                           | Purpose                                          |
| ------------------------------------------------- | ------------------------------------------------ |
| `kubectl get pods`                                | list pods                                        |
| `kubectl get pods -n <namespace>`                 | list pods from specific namespace                |
| `kubectl describe pods <pod-name>`                | describe pods                                    |
| `kubectl describe pods <pod-name> -n <namespace>` | describe pods from specific namespace            |
| `kubectl get pods -o wide`                        | get more details of pods                         |
| `kubectl get pods -o wide -n <namespace>`         | get more details of pods from specific namespace |
| `kubectl exec -it <pod-name> bash`                | login into pod                                   |
| `kubectl exec -it psql bash -n dev`               | login to pod from specific namespace             |
| `kubectl delete pod <pod-name>`                   | delete pod                                       |
| `kubectl delete pod <pod-name> -n <namespace>`    | delete pod from specific namespace               |