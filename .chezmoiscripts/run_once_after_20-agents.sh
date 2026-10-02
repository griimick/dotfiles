#!/bin/bash
set -euo pipefail

# opencode and Claude Code are installed on every machine
if [ ! -x "${HOME}/.opencode/bin/opencode" ] && ! command -v opencode >/dev/null; then
  curl -fsSL https://opencode.ai/v2/install | bash
fi

if [ ! -x "${HOME}/.local/bin/claude" ] && ! command -v claude >/dev/null; then
  curl -fsSL https://claude.ai/install.sh | bash
fi
