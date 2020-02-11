#!/bin/bash

INSTANCE_NAME=dev

gcloud compute instances create \
   --machine-type=n2-standard-4 \
  --zone asia-northeast1-b \
  --preemptible \
  $INSTANCE_NAME
gcloud compute config-ssh
sleep 5
gcloud compute ssh $INSTANCE_NAME --command 'bash -c "$(curl -L dd.nibo.sh)"'
