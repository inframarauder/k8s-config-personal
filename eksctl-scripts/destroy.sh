#!/bin/bash

CLUSTER_NAME="inframarauder-demo-cluster"

# Delete EKS cluster
eksctl delete cluster --name $CLUSTER_NAME