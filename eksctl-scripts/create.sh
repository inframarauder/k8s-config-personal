#!/bin/bash

CLUSTER_NAME="inframarauder-demo-cluster"
CLUSTER_VERSION="1.33"
NODEGROUP_NAME="inframarauder-demo-nodegroup"
NODE_TYPE="t3.micro"
NODES=3
NODES_MIN=2
NODES_MAX=5

# Create EKS cluster
eksctl create cluster \
 --name=$CLUSTER_NAME \
 --version=$CLUSTER_VERSION \
 --nodegroup-name=$NODEGROUP_NAME \
 --node-type=$NODE_TYPE \
 --nodes=$NODES \
 --nodes-min=$NODES_MIN \
 --nodes-max=$NODES_MAX \
 --tags=auto-destroy=true \
 --managed

# Update kubeconfig
aws eks update-kubeconfig --name $CLUSTER_NAME