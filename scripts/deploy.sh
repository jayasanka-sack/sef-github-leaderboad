#!/bin/bash
set -e
ssh-keyscan -H $IP >> ~/.ssh/known_hosts
# Copy generated war files to the server
scp api/target/api#github-leaderboad#v1.war $USER_NAME@$IP:$DEPLOY_PATH
scp ui/target/github-leaderboard.war $USER_NAME@$IP:$DEPLOY_PATH
