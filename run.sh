#!/bin/bash

# Installing Gatekeeper

helm repo add gatekeeper https://open-policy-agent.github.io/gatekeeper/charts
helm install gatekeeper/gatekeeper --name-template=gatekeeper --namespace gatekeeper-system --create-namespace
kubectl get all --namespace gatekeeper-system