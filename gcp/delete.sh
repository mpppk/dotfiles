#!/bin/bash

INSTANCE_NAME=dev
gcloud compute instances delete $INSTANCE_NAME
