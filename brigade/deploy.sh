#! /bin/sh

helm inspect values brigade/brigade-project > myvalues.yaml

helm install --name my-project brigade/brigade-project -f myvalues.yaml

brig run -f brigade.js deis/empty-testbed

