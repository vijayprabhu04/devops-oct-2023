# k8s-cluster

* spin up three node cluster
- 192.168.33.13 k8-master
- 192.168.33.14 k8-node-1
- 192.168.33.15 k8-node-2

# master machine tasks

- once machine is ready
- switch to root account run below command
  `kubeadm init --apiserver-advertise-address 192.168.33.13 --pod-network-cidr=10.244.0.0/16`
  `remove --port 0 from /etc/kubernetes/manifests/kube-[controller-api| scheduler].yaml` # optional

# worker node tasks

- switch to root account
- paste the token generated from master

# kubeconfig setup in master
- switch to root account
- mkdir -p $HOME/.kube
- cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
- kubectl get nodes
- kubectl get all
- kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

# Reference link : https://medium.com/swlh/setup-own-kubernetes-cluster-via-virtualbox-99a82605bfcc

# Upgrade connection with nodes
- vim /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
  update file with below line: node:1 `Environment="KUBELET_EXTRA_ARGS=--node-ip=192.168.33.14"`
  update file with below line: node:2 `Environment="KUBELET_EXTRA_ARGS=--node-ip=192.168.33.15"`

- Then service restart
  * systemctl daemon-reload
  * systemctl restart kubelet

# Troubleshooting

# use below trobleshooting steps if incase you got into below errors while running kubeadm init command 
* Error 1 :
`/proc/sys/net/ipv4/ip_forward contents are not set to 1` 

solution : 
`echo 1 > /proc/sys/net/ipv4/ip_forward`
  
* Error 2 :
`/proc/sys/net/bridge/bridge-nf-call-iptables does not exist`

solution :
`echo br_netfilter > /etc/modules-load.d/br_netfilter.conf`
`systemctl restart systemd-modules-load.service`
`echo 1 > /proc/sys/net/bridge/bridge-nf-call-iptables`
`echo 1 > /proc/sys/net/bridge/bridge-nf-call-ip6tables`