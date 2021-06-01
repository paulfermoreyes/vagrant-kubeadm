helm install wp-nfs-provisioner stable/nfs-server-provisioner \
    --namespace=wp-nfs \
    --set=persistence.enabled=true,persistence.storageClass=openebs-sc-statefulset,persistence.size=1Gi,storageClass.name=openebs-nfs-sc,storageClass.provisionerName=openebs.io/nfs