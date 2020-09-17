# Create cluster
kind create cluster --config kind.yaml
# If the cluster is running on a remote Docker host
ssh -fNL 127.0.0.1:6443:127.0.0.1:6443 docker-hcloud
# Wait for cluster node to become ready

# Deploy kapp-controller
# TODO: Deploy latest release
kubectl apply -f https://github.com/k14s/kapp-controller/releases/download/v0.10.0/release.yml
# Wait for pods to become ready
