# ubuntu-rancher-openebs-cstor
```
# install operator
kubectl apply -f https://openebs.github.io/charts/cstor-operator.yaml

kubectl get bd -n openebs

# fill-in the cspc.yaml to reflect your need
k apply -f cspc-infra01.yaml 


kubectl get bd -n openebs
NAME                                           NODENAME   SIZE            CLAIMSTATE   STATUS   AGE
blockdevice-030e498bd4bcbab16acb8e0c17dfb960   worker2    3840722427904   Claimed      Active   32m
blockdevice-1d7ce42f0cdce87ac8549f04191c557a   worker3    3840722427904   Claimed      Active   32m
blockdevice-2586d5f36c6a1348075aa1458232672d   worker1    3840712638464   Unclaimed    Active   15m
blockdevice-7cb1e5b5e111f7927273a5976a75fa0b   worker4    3840712638464   Unclaimed    Active   14m
blockdevice-7f41031ca5c5bf69a32508d20c2bbf66   worker2    3840712638464   Unclaimed    Active   14m
blockdevice-8deea3692e3d05d7d0ea3146faa296a2   worker4    3840722427904   Claimed      Active   32m
blockdevice-e2a5e7d2813ebc83a98c9d1f35dc86ee   worker3    3840712638464   Unclaimed    Active   15m
blockdevice-f61f2a3d142c7039413975714184a7aa   worker1    3840722427904   Claimed      Active   32m


ubuntu@desktop3:~$ kubectl get cspc -n openebs
NAME            HEALTHYINSTANCES   PROVISIONEDINSTANCES   DESIREDINSTANCES   AGE
cstor-storage   4                  4                      4                  17m



ubuntu@desktop3:~$ kubectl get cspi -n openebs
NAME                 HOSTNAME   FREE    CAPACITY        READONLY   PROVISIONEDREPLICAS   HEALTHYREPLICAS   STATUS   AGE
cstor-storage-6vdx   worker2    3360G   3360000078500   false      0                     0                 ONLINE   18m
cstor-storage-9b69   worker1    3360G   3360000078500   false      0                     0                 ONLINE   18m
cstor-storage-9hb7   worker3    3360G   3360000078500   false      0                     0                 ONLINE   17m
cstor-storage-s882   worker4    3360G   3360000078500   false      0                     0                 ONLINE   17m


````
