#!/bin/sh
export PATH=$HOME/bin:$PATH
echo Please provide your Scoarboard Server URL
#read serverUrl
export SCOREBOARD_SERVER="http://workshop-progress.apps.rj-workshop.1ohs.p1.openshiftapps.com"
mkdir $HOME/bin
cd $HOME/bin
wget https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/stable/openshift-client-linux.tar.gz
wget https://mirror.openshift.com/pub/openshift-v4/clients/rosa/latest/rosa-linux.tar.gz
wget https://github.com/jqlang/jq/releases/download/jq-1.6/jq-linux64
mv jq-linux64 jq
tar -xvf rosa-linux.tar.gz
tar -xvf openshift-client-linux.tar.gz
cd $HOME
