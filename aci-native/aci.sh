#! /bin/sh

az group create --name myResourceGroup --location eastus
az container create --name mycontainer --image microsoft/aci-helloworld --resource-group myResourceGroup --ip-address public --ports 80
az container show --name mycontainer --resource-group myResourceGroup

# az group delete -n myResourceGroup --yes
