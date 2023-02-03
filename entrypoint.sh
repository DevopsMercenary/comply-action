#!/bin/bash

cd $GITHUB_WORKSPACE

if [[ -n $INPUT_COMPLY_PATH ]]; then
    echo "changing to sub-directory $INPUT_COMPLY_PATH"
    cd $INPUT_COMPLY_PATH
fi

if [ -n "$INPUT_JIRA_USERNAME" ]; then
    echo "Setting JIRA username"
    sed -i "s/<JIRA_USERNAME>/$INPUT_JIRA_USERNAME/g" comply.yml
fi

if [ -n "$INPUT_JIRA_PASSWORD" ]; then
    echo "Setting JIRA password"
    sed -i "s/<JIRA_PASSWORD>/$INPUT_JIRA_PASSWORD/g" comply.yml
fi

comply $@
