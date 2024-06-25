#!/bin/sh

pushd ..
printf "\nDeploy HTTPBin service ...\n"
kubectl apply -f apis/httpbin.yaml

printf "\nDeploy Transformation Policies ...\n"
kubectl apply -f policies/transformation/transformation-policy.yaml

printf "\nDeploy VirtualGateway ...\n"
kubectl apply -f virtualgateways/vg.yaml

printf "\nDeploy RouteTables ...\n"
kubectl apply -f routetables/api-example-com-rt.yaml


popd