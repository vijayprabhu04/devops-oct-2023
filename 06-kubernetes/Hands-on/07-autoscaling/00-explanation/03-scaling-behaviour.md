# Scale up & down based on load
- If you use the HorizontalPodAutoscaler API
- you can use the behavior field to configure separate scale-up and scale-down behaviors 
- You specify these behaviours by setting scaleUp/scaleDown under the behavior field
- You can also specify a stabilization window that prevents flapping the replica count for a scaling target
- Scaling policies also let you controls the rate of change of replicas while scaling

Example :

```
behavior:
  scaleDown:
    stabilizationWindowSeconds: 300
    policies:
    - type: Percent
      value: 50
      periodSeconds: 15
  scaleUp:
    stabilizationWindowSeconds: 0
    policies:
    - type: Percent
      value: 100
      periodSeconds: 15
    selectPolicy: Max
```

- The above lines can be added to your code which determines the scaleup/down behaviour
- scaledown
  * scale down stabilization seconds : 300
  * 100% scale down : which means when load goes down the pods which are created additionally should be shrinked to the minimum count which is specified in Replicas
- scaleup
  * scale up stabilization seconds : 0
  * 100% scale up : upto maximum values specified