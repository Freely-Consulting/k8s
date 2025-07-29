# Makefile - k8s
## LOCALHOST
#### 
# the localhost environment is the stage where the "main character"
# applications "act". In a play, the stage supports the characters by
# providing them a platform, lights, scenary, room for an orchestra,
# etc. Likewise, in a software development environment, the localhost
# environment supports the applications by providing a database, container
# runtime, environment variables, mocks of third party services, etc.
# 
# localhost-setup: start all ancillary services, instantiate variables, install
# software, etc required for the Application Commands to execute successfully.
# TODO: check and start docker registry, minikube, etc, etc
# localhost-stop: terminate all ancillary services, etc
####
local-install:
	./scripts/dev_env_setup.sh
local-run:
	$echo "local-run"
local-stop:
	$echo "local-stop"
localhost-destroy:
	$echo "local-destory"
####
# only destory dependencies that are not used by other projects 
####
	$echo "localhost-background-destory"
####
# 
#  docker run -d -p 5000:5000 --name registry registry:2.7 
####

## Application Commands
### server
s-install:
	cd server && npm install
s-prod:
	cd server && npm run prod

s-clean:
	docker rmi localhost:5000/k8s-server-i
	
s-sim-prod-prepare-image:
	docker build server/ -t "localhost:5000/k8s-server-i:latest" && \
	docker push "localhost:5000/k8s-server-i:latest" 

	
## Application Orchestration
### Simulated Production
	
sim-prod-up: s-sim-prod-prepare-image
	kubectl apply -f manifest.yml
sim-prod-down:
	kubectl delete -f manifest.yml
