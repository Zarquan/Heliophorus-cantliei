#!/bin/sh
set -e

if [ -z "$1" ]; then
    echo "Usage: cantliei <seconds> [exit-code]"
    echo "  seconds   - number of seconds to wait"
    echo "  exit-code - exit code to return (default: 0)"
    exit 1
fi

case "$1" in
    ''|*[!0-9.]*)
        echo "Error: '$1' is not a valid number of seconds"
        exit 1
        ;;
esac

exitcode="${2:-0}"

case "$exitcode" in
    ''|*[!0-9]*)
        echo "Error: '$exitcode' is not a valid exit code"
        exit 1
        ;;
esac

echo "Waiting for $1 seconds ..."
sleep "$1"
echo "Exiting with code $exitcode"
exit "$exitcode"
