#!/bin/bash
set -euo pipefail

KEY="${HOME}/.ssh/id_ed25519"

# nothing to do once the key exists; runs on every apply until it does
[ -f "$KEY" ] && exit 0

# ssh-keygen reads the passphrase from the terminal, so skip when there is none
if ! (: </dev/tty) 2>/dev/null; then
    echo "[WARN] ${KEY} is missing and there is no terminal to set a passphrase."
    echo "       Run: ssh-keygen -t ed25519 -f ${KEY} -C \"\""
    exit 0
fi

mkdir -p "${HOME}/.ssh"
chmod 700 "${HOME}/.ssh"

echo "[INFO] Generating ${KEY} (choose a passphrase)"
ssh-keygen -t ed25519 -f "$KEY" -C ""

echo ""
echo "[INFO] Add this public key to GitHub (Settings > SSH and GPG keys)"
echo "       once as an Authentication key and once as a Signing key:"
echo ""
cat "${KEY}.pub"
echo ""
