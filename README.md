## 
[Demo application 2048 github repo](https://github.com/gabrielecirulli/2048)

## Testing
To test the Docker and Kubernetes deployments of this demo-app you would need a setup like [Docker Desktop](https://www.docker.com/products/docker-desktop/). Docker Desktop provides a local environment for Docker and Kubernetes.
## Build Image
```
docker image build -t demo-app-2048:0.0.1 .
```

## Deploy with Docker
```
docker run -p 80:80 demo-app-2048:0.0.1
```
Check on browser http://127.0.0.1:80

## Deploy with Kubernetes

```
kubectl apply -f demo-app-2048-k8s.yml
kubectl get pods
kubectl port-forward <pod_name> 8080:80
```

Check on browser http://127.0.0.1:8080
