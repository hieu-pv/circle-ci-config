#!/bin/bash

ssh root@$SERVER_IP "docker pull docker-registry.vicoders.com/$CIRCLE_PROJECT_REPONAME:$CIRCLE_BRANCH && docker service update --image docker-registry.vicoders.com/$CIRCLE_PROJECT_REPONAME:$CIRCLE_BRANCH --force $SERVICE_NAME && docker system prune -f"
