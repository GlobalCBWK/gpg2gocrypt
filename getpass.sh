#!/bin/bash

# Set restrictive umask
umask 077

GPG_FILE="$HOME/pass.gpg"

if [ ! -f "$GPG_FILE" ]; then
    echo "Password file missing" >&2
    exit 1
fi

exec gpg --quiet --no-symkey-cache --pinentry-mode loopback --decrypt "$GPG_FILE"