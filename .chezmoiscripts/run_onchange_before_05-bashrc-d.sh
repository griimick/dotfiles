#!/usr/bin/env bash
set -euo pipefail

BASHRC="${HOME}/.bashrc"
INIT_LINE='source ~/.bashrc.d/.init.sh'

if grep -qF "$INIT_LINE" "$BASHRC" 2>/dev/null; then
    echo "[INFO] bashrc.d already sourced in ~/.bashrc"
    exit 0
fi

echo "" >> "$BASHRC"
echo "# Source modular bashrc.d" >> "$BASHRC"
echo 'if [ -f ~/.bashrc.d/.init.sh ]; then' >> "$BASHRC"
echo "    $INIT_LINE" >> "$BASHRC"
echo "fi" >> "$BASHRC"

echo "[INFO] Added bashrc.d sourcing to ~/.bashrc"
