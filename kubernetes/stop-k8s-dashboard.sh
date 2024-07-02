#!/bin/bash

# Namespace where Kubernetes Dashboard is deployed
NAMESPACE=kubernetes-dashboard
DEPLOYMENT=spring-cloud-kubernetes-discoveryserver-deployment
SERVICE=spring-cloud-kubernetes-discoveryserver 
# Delete the Kubernetes Dashboard deployment
kubectl delete deployment $DEPLOYMENT 

# Delete the service
kubectl delete service $SERVICE

# Wait for the resources to be deleted to avoid race conditions
echo "Waiting for the Kubernetes Dashboard deployment and service to be deleted..."
sleep 5

# Delete all the pods in the namespace
kubectl delete pods --all -n $NAMESPACE

# Optionally, delete the entire namespace (uncomment if needed)
kubectl delete namespace $NAMESPACE

echo "Kubernetes Dashboard and its pods have been shut down."
