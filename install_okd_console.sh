#!/bin/bash

export KUBECONFIG=$HOME/.kcli/clusters/blablaconf/auth/kubeconfig
kubectl create serviceaccount console -n kube-system

kubectl create clusterrolebinding console --clusterrole=cluster-admin --serviceaccount=kube-system:console -n kube-system

# Waiting for service account token to be generated
sleep 5

sed "s/MY_TOKEN/$(kubectl get serviceaccount console --namespace=kube-system -o jsonpath='{.secrets[0].name}')/g" yamls_to_apply/console-deployment.yaml | kubectl apply -f -
