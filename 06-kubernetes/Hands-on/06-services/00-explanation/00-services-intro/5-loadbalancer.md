# Load balance service
* Load balance allows you to establish the service to common load balancer IP address
* chekout the manifest file <lb.yaml>
* fields to be noticed
  - type: 
  - nodeport: 
* Note : By default, the Kubernetes control plane will allocate a port from a range (default: 30000-32767)
* apply the file - `kubectly apply -f nodeport.yaml`
* kubectl commands
    - `kubectl get service`
    - `kubectl get svc`
    - `kubectl get service <service> -o yaml`
    - `kubectl get endpoints`
    - `kubectl get pod -o wide`

# Test scenarios 
* add pods by increasing replicas & see if pods are getting auto added by service using endpoint command
* decrease the pod count and check if it is removed from endpoints

# Accessing your application via load balancer IP
* login into pod and add your own contents in html file 
  `kubectl exec -it <pod-name> --bash`
* Then do curl from machine with <lb-ip>:<port> to check if you can view your html contents.
  `curl <lb-ip>:<port-number>`
* From browser you can access the same using <lb-ip>:<port>
* Note : 
  - local virtual machine does not create load balancer hence it might not have external IP
  - hence no `EXTERNAL-IP` section from `kubectl get svc command` will be in `pending` state
  - if your create this in public cloud it might automatically create lb for itself and assign external IP