#!/bin/sh

if [ -f /app/package.json ]; then
    npm install
fi

exec gosu www-data "$@"