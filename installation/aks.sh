#! /bin/sh

aks=tomerAksCluster
location=westeurope
#AZURE_CLIENT_ID=
#AZURE_CLIENT_SECRET=

# Creat Resource Group
az group create --name $aks --location $location

# Create Cluster
az aks create --resource-group $aks --name $aks --service-principal $AZURE_CLIENT_ID --client-secret $AZURE_CLIENT_SECRET --node-vm-size Standard_DS3_v2 --node-count 1 --ssh-key-value ~/.ssh/id_rsa.pub --kubernetes-version 1.8.1

# Connect kubectl to cluster
az aks get-credentials --resource-group $aks --name $aks

# Upgrade cluster
# az aks upgrade --kubernetes-version 1.8.1 --name $aks --resource-group $aks

# Proxy to the dashboard
az aks browse --resource-group $aks --name $aks

#az group delete -n $aks --yes