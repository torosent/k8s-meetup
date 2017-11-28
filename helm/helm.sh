#! /bin/sh

helm install --name wp-release stable/wordpress

helm del wp-release --purge

helm install --name wp-release \
  --set wordpressUsername=admin,wordpressPassword=password,mariadb.mariadbRootPassword=secretpassword,persistence.enabled=false,mariadb.persistence.enabled=false \
    stable/wordpress

helm del wp-release --purge
