#!/bin/bash

# create new project
gcloud projects create md-challenge-1-a

# use the new create project
gcloud config set project md-challenge-1-a

# enable compute api
gcloud services enable compute.googleapis.com

# create new instance with appropriate settings
gcloud compute instances create myvm \
    --metadata lab-logs-bucket=gs://md-lab-logs-bucket \
    --metadata-from-file startup-script=startup_script.sh \
    --scopes cloud-platform \
    --machine-type f1-micro

gcloud config set project astral-depth-238910
gcloud projects delete md-challenge-1-a



