#!/bin/sh
echo What is your name?
read name

export ROSA_AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
export ROSA_AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
export ROSA_AWS_DEFAULT_REGION=$(aws configure get region)


export AWS_ACCESS_KEY_ID=${ROSA_AWS_ACCESS_KEY_ID}
export AWS_SECRET_ACCESS_KEY=${ROSA_AWS_SECRET_ACCESS_KEY}
export AWS_REGION=${ROSA_AWS_DEFAULT_REGION}


read -p "Please enter ROSA Login Token [$REDHAT_ACCOUNT_TOKEN]: " IN_TOKEN
REDHAT_ACCOUNT_TOKEN="${IN_TOKEN:-$REDHAT_ACCOUNT_TOKEN}"


export REDHAT_ACCOUNT_TOKEN=${REDHAT_ACCOUNT_TOKEN}


export CLUSTER_NAME=${CLUSTER_NAME:-rosa1}
read -p "Please enter a cluster name: [$CLUSTER_NAME]: " IN_NAME
export CLUSTER_NAME="${IN_NAME:-$CLUSTER_NAME}"

export CLUSTER_NAME
export CLUSTER_ADMIN_PASSWORD
export CLUSTER_API_URL
export KUBECONFIG


export MY_NAME="$name"
export ROSA_OCM_TOKEN="$rosaToken"
export SCOREBOARD_SERVER="http://workshop-progress.apps.rj-workshop.1ohs.p1.openshiftapps.com"

export ROSA_AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
export ROSA_AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
export ROSA_AWS_DEFAULT_REGION=$(aws configure get region)
