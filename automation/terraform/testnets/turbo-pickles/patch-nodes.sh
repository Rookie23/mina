#!/bin/bash

ready=""
while [[ -z $ready ]]; do
  ready=$(kubectl get pods -l app=fish-block-producer-1 | grep -P '\s+([1-9]+)\/\1\s+')
  kubectl get pods -l app=fish-block-producer-1
  sleep 30
done


#for whale in fish-block-producer-1 whale-block-producer-{1..15}; do
#  kubectl patch deploy/${whale} -p "$(cat patch.yaml)"
#  ready=""
#  while [[ -z $ready ]]; do
#    ready=$(kubectl get pods -l app=${whale} | grep -P '\s+([1-9]+)\/\1\s+')
#    kubectl get pods -l app=${whale}
#    sleep 30
#  done
#done
