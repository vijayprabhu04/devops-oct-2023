# Cluster IP service
* This is the default type of `service`
* while we create a service without specifing type, by default it may consider cluster IP service
* however in our manifest file <cluster.yaml> we are specifing type as `ClusterIP`
* apply the file - `kubectly apply -f cluster.yaml`
* kubectl commands
    - `kubectl get service`
    - `kubectl get svc`
    - `kubectl get service <service> -o yaml`
    - `kubectl get endpoints`
    - `kubectl get pod -o wide`

# Test scenarios 
* add pods by increasing replicas & see if pods are getting auto added by service using endpoint command
* decrease the pod count and check if it is removed from endpoints

# Accessing your application via cluster IP
* login into pod and add your own contents in html file 
  `kubectl exec -it <pod-name> --bash`
* Then do curl from machine with <cluster-ip>:<port> to check if you can view your html contents.
  `curl <cluster-ip>:<port-number>`