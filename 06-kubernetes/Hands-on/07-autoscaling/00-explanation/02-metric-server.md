# Metric server configuration

* Requirement of metric server is to pull the current usage metrics of PODS which helps in scaling.

- `wget https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml`
- `vi components.yaml`
- `add below lines in components.yaml file (line number 143 to 145)`

  ```
  command:
    - /metrics-server
    - --kubelet-insecure-tls
    - --kubelet-preferred-address-types=InternalIP
   ```
   
- `kubectl apply -f components.yaml`
- `kubectl get pods -n kube-system`

# How to check if metric server is working
- `kubectl top nodes`
- `kubectl top pods -A`

# Minikube 
Within minikube, metrics-server is available as a add-on. If it is not enabled already, you can enable it by running the following command:

`minikube addons enable metrics-server`