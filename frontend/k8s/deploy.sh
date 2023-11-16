#!/usr/bin/env bash

kubectl apply -f farm-frontend-deployment.yml

kubectl get pods
kubectl get svc
