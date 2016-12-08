#!/bin/bash

BIN_DIR="$(dirname $0)"

"$BIN_DIR/curlStatus.sh"  "pending" "Deployment to bluemix started"

cd tmp
ls -l

ansible-playbook ../tstbk.yml
rc=$?

if [[ $rc != 0 ]]; then
  "$BIN_DIR/curlStatus.sh"  "failure" "Deployment to bluemix failed"
  exit $rc
else
  "$BIN_DIR/curlStatus.sh"  "success" "Deployment to bluemix successful"
fi
