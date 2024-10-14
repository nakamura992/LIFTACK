#!/bin/sh

if [ -f /app/package.json ]; then
    npm install
fi

exec su-exec www-data "$@"