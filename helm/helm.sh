#! /bin/sh

helm install --name jenkins-release -f values.yaml stable/jenkins

helm upgrade -f values.yaml --set Master.ImageTag=lts jenkins-release stable/jenkins

helm del jenkins-release --purge
