# k8s Homelab

## Notes
- Kubernetes Technologies: minikube, kubeadm, kind, k3s

Whenever I implement something, I consider three scenarios: dev, test, and
prod. I believe that every application should possess the ability to be run
locally. Why? Because a machine is a machine, and the bare bones operation of
an application shouldn't require more cpu and ram that is available on the
latest laptops. Regarding k8s, how do you all develop and test your cluster set
up before deploying to prod? I was thinking about starting with minikube, but
that technology would limit my ability to test scenarios with multiple nodes. I
could spin up VMs on my machine and use kubeadm, but

## TODO
1. minikube 
2. kubeadm
3. eks with open tofu
