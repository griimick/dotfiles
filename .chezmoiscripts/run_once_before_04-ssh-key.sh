#!/bin/bash
set -euo pipefail

# Every machine has its own key. Register the printed public key on this
# machine's GitHub account as both an authentication and a signing key.
KEY="${HOME}/.ssh/id_ed25519"

if [ -f "$KEY" ]; then
    echo "[INFO] ${KEY} already exists"
    exit 0
fi

if [ ! -t 0 ]; then
    echo "[WARN] no terminal for the passphrase prompt, skipping key generation"
    echo "       run: ssh-keygen -t ed25519 -f ${KEY} -C \"\""
    exit 0
fi

mkdir -p "${HOME}/.ssh"
chmod 700 "${HOME}/.ssh"

echo "[INFO] Generating ${KEY} (choose a passphrase)"
ssh-keygen -t ed25519 -f "$KEY" -C ""

echo ""
echo "[INFO] Add this public key to GitHub (https://github.com/settings/keys)"
echo "       once as an Authentication key and once as a Signing key:"
echo ""
cat "${KEY}.pub"
echo ""
