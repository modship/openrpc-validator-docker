#!/bin/bash

cd /app

echo "$@"

# get command args
if [ "$1" = "generate" ]; then
    npm run generate:client
    npm run generate:test
    exit 0
elif ["$1" = "test"]; then
    npm run test:run
    exit 0
else 
    echo "Invalid command"
    exit 1
fi
