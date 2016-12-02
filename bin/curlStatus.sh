#!/bin/bash
STATUS="$1"
MESSAGE="$2"

curl -H "Authorization: token $GH_TOKEN" -H "Content-Type: application/json" -X POST "$DEPLOY_STATUS_URL" -d "{\"state\": \"$STATUS\",\"description\": \"$MESSAGE\"}"


