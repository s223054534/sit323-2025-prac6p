SIT323/SIT737 - Kubernetes Deployment of Node.js App

# Setup Instructions

1. Start Minikube cluster
2. Build and push Docker image
3. Apply Kubernetes Deployment and Service
4. Access the application on NodePort

# Files

- app/server.js
- app/package.json
- app/Dockerfile
- k8s/deployment.yaml
- k8s/service.yaml

# Commands Used

```bash
minikube start
docker build -t yourdockerhubusername/k8s-node-app:v1 .
docker push yourdockerhubusername/k8s-node-app:v1
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
minikube service node-app-service
