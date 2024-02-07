| Cluster IP                                                 | 
| -----------------------------------------------------------|
| pods can be accessible from different nodes via cluster IP |
| pods cannot be accessible from outside                     |
| Only internal access is possible                           |

| Node port                                                   | 
| ----------------------------------------------------------- |
| pods can be accessible from different nodes via common port |
| every node ip address returns same result from common port  |
| pods can be accessible from outside via node ip and port    |

| Load Balancer                                               |
| ------------------------------------------------------------|
| pods can be accessible from different nodes via common port |
| but common port are accessible only via load balancer ip    |
| pods can be accessible from outside via loadbalance ip      |