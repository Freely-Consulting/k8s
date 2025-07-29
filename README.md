# k8s Homelab

## Development
- `make localhost-setup` -> change to run
- `make sim-prod-up`
- `kubectl get services | awk '/LoadBalancer/{ print $1}' | xargs minikube service`
- `make sim-prod-down`

### Required Software
- Docker
- Minikube
- Kubectl
- Nodejs
### Set Up
1. Ensure 
### Key Linux Commands
- ``
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
a. Make script that executes these [instructions](https://gist.github.com/trisberg/37c97b6cc53def9a3e38be6143786589)

2. kubeadm
3. eks with open tofu
