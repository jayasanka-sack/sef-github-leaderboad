#!/bin/bash
set -e
ssh-keyscan -H $IP >> ~/.ssh/known_hosts

scp api/target/api.github-leaderboad.v1.war $USERNAME@$IP:$PATH
scp ui/target/github-leaderboard.war $USERNAME@$IP:$PATH
