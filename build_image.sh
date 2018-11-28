#!/bin/sh

TERRAFORM_VERSION=0.11.10

docker build \
  --build-arg TERRAFORM_VERSION=${TERRAFORM_VERSION} \
  -t honomoa/jenkins-terraform:${TERRAFORM_VERSION}-alpine \
  .
