#!/bin/bash

# Namespace where Kubernetes Dashboard will be deployed
NAMESPACE=kubernetes-dashboard
kubectl apply -f ./dashboard/kubernetes-discoveryserver.yml
# Apply the Kubernetes Dashboard manifests
# kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.3.1/aio/deploy/recommended.yaml

# Optionally, create a service account and cluster role binding for dashboard access
# kubectl apply -f - <<EOF
# apiVersion: v1
# kind: ServiceAccount
# metadata:
#   name: admin-user
#   namespace: $NAMESPACE
# ---
# apiVersion: rbac.authorization.k8s.io/v1
# kind: ClusterRoleBinding
# metadata:
#   name: admin-user
# roleRef:
#   apiGroup: rbac.authorization.k8s.io
#   kind: ClusterRole
#   name: cluster-admin
# subjects:
# - kind: ServiceAccount
#   name: admin-user
#   namespace: $NAMESPACE
# EOF

# echo "Kubernetes Dashboard has been started."

# # Get the token for logging in
# echo "Fetching login token..."
# kubectl -n $NAMESPACE describe secret $(kubectl -n $NAMESPACE get secret | grep admin-user | awk '{print $1}')
