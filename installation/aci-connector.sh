#! /bin/sh

rg=tomerAksCluster
location=westeurope

helm install --name aci-release --set env.azureClientId=$AZURE_CLIENT_ID,env.azureClientKey=$AZURE_CLIENT_SECRET,env.azureTenantId=$AZURE_TENANT_ID,env.azureSubscriptionId=$AZURE_SUBSCRIPTION_ID,env.aciResourceGroup=$rg,env.aciRegion=$location ./charts/aci-connector

helm del aci-release --purge