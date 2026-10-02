# Setup starship if starship bin exists
STARSHIP_BIN=$HOME/.local/bin/starship
if [ -x "$STARSHIP_BIN" ]; then
	eval "$($STARSHIP_BIN init bash)"
elif command -v starship >/dev/null; then
	eval "$(starship init bash)"
fi
