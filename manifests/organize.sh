#!/bin/bash

# Define your base directory for Kubernetes manifests
BASE_DIR="kubernetes_manifests"

# Create a directory for Kubernetes manifests if it doesn't exist
mkdir -p $BASE_DIR

# Create directories for each type of Kubernetes resource
mkdir -p $BASE_DIR/deployments
mkdir -p $BASE_DIR/services
mkdir -p $BASE_DIR/persistentvolumeclaims

# Move deployment YAML files
mv *deployment.yaml $BASE_DIR/deployments/

# Move service YAML files
mv *service.yaml $BASE_DIR/services/

# Move persistent volume claim YAML files
mv *claim*.yaml $BASE_DIR/persistentvolumeclaims/

# Display the structure
echo "Files have been organized into the following structure:"
tree $BASE_DIR

