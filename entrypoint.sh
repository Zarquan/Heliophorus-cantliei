#!/bin/sh
set -e

if [ -z "$1" ]; then
    echo "Usage: docker run cantliei <seconds>"
    exit 1
fi

case "$1" in
    ''|*[!0-9.]*)
        echo "Error: '$1' is not a valid number of seconds"
        exit 1
        ;;
esac

echo "Waiting for $1 seconds ..."
sleep "$1"
echo "Done."
