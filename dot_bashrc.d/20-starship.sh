# Setup starship if starship bin exists
STARSHIP_BIN=$HOME/.local/bin/starship
if [ -x "$STARSHIP_BIN" ]; then
	eval "$($STARSHIP_BIN init bash)"
	starship preset nerd-font-symbols -o ~/.config/starship.toml
elif [ -x "$(which starship >/dev/null)" ]; then
	eval "$(starship init bash)"
	starship preset nerd-font-symbols -o ~/.config/starship.toml
fi
