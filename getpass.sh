#!/bin/bash

# Set restrictive umask
umask 077

GPG_FILE="/path/2/your/gpg/file"

if [ ! -f "$GPG_FILE" ]; then
    echo "Password file missing" >&2
    exit 1
fi

exec gpg --quiet --no-symkey-cache --pinentry-mode loopback --decrypt "$GPG_FILE"
