#!/bin/bash
helm upgrade es elastic/elasticsearch \
    -f sample-apps/elasticsearch.yaml
    # --set volumeClaimTemplate.storageClassName=openebs-sc-statefulset \
    # --set resources.requests.cpu=200m \
    # --set resources.requests.memory=256Mi \
    # --set resources.limits.cpu=500m \
    # --set resources.limits.memory=512Mi \
    # --set initResources.requests.cpu=200m \
    # --set initResources.requests.memory=256Mi