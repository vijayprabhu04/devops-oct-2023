# NodePort service
* Nodeport allows you to establish the service to your virtual machine IP address
* chekout the manifest file <nodeport.yaml>
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

# Accessing your application via node IP
* login into pod and add your own contents in html file 
  `kubectl exec -it <pod-name> --bash`
* Then do curl from machine with <node-ip>:<port> to check if you can view your html contents.
  `curl <node-ip>:<port-number>`
* From browser you can access the same using <node-ip>:<port>
* Note : 
  - local virtual machine does not have external IP
  - hence no `ip` found in `EXTERNAL-IP` section from `kubectl get svc command`
  - if your machine has public IP address, it would be visible over here