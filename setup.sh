#!/bin/sh

helm repo add cnpg https://cloudnative-pg.github.io/charts
helm repo update
kubectl create namespace cnpg-system
kubectl create namespace cnpg-system # Ensure this namespace exists
helm install cnpg-operator cnpg/cloudnative-pg \
  --namespace cnpg-system \
  --version 0.24.0 # Use the CHART VERSION you found
