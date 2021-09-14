#!/bin/sh -x
kubeadm init --apiserver-advertise-address $(hostname -i) --pod-network-cidr 10.5.0.0/16
kubectl apply -f https://raw.githubusercontent.com/cloudnativelabs/kube-router/master/daemonset/kubeadm-kuberouter.yaml
alias start_shpod="kubectl apply -f https://k8smastery.com/shpod.yaml"
alias connect_shpod="kubectl attach --namespace=shpod -ti shpod"
alias stop_shpod="kubectl delete -f https://k8smastery.com/shpod.yaml"

