#!/bin/bash

BIN_DIR="$(dirname $0)"

cd tmp
ls -l
BIN_DIR="../$BIN_DIR"

echo "Deployment to bluemix started"
"$BIN_DIR/curlStatus.sh"  "pending" "Deployment to bluemix started"



#ansible-playbook ../tstbk.yml
rc=$?

if [[ $rc != 0 ]]; then
  echo "Deployment to bluemix failed"
  "$BIN_DIR/curlStatus.sh"  "failure" "Deployment to bluemix failed"
  exit $rc
else
  echo "Deployment to bluemix successful"
  "$BIN_DIR/curlStatus.sh"  "success" "Deployment to bluemix successful"
fi
