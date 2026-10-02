# dotfiles

```bash
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣶⣶⣾⣿⣻⣿⣿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣋⡛⣿⠛⢿⣿⣿⣿⣿⣿⠿⢿⣿⣷⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣰⠿⢿⠏⠀⠀⠉⡛⠟⠀⣺⣿⣿⣿⣿⣧⡈⢀⣹⣿⣿⢙⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⡀⠘⠉⠀⠁⢀⣀⡀⠀⡠⠀⣴⠛⠉⠀⠀⠉⣹⣿⣿⣿⣿⣿⣦⠃⠀⠀⠀⠀⠀⠀"Where's my fish?"⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣾⣿⣿⣏⣤⣾⣿⣿⣶⣶⣤⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠉⢀⣉⠙⠻⣿⣿⣿⣿⣿⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⢿⣿⣿⣏⠙⠉⠉⣴⣾⣿⣧⣿⣿⣿⣾⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⣳⢋⠜⠻⠛⠃⠀⠘⠋⠉⠉⠉⠀⠈⠛⠛⣿⣿⣿⣿⠦⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⠋⡰⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢸⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣻⣯⣴⣡⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣷⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣼⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢈⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⢠⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠱⢌⡑⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠁⢋⠓⠻⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡅
```

One line personal dotfile setup for linux VMs

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init --apply griimick
```

You will be prompted for your name and email (used for git).

### What you get

1. [nvim](https://github.com/neovim/neovim) with [LazyVim](https://github.com/LazyVim/LazyVim), installed from the release tarball into `~/.local/share/nvim-dist` (no snap or sudo needed)
2. [starship](https://github.com/starship/starship) prompt
3. [fzf](https://github.com/junegunn/fzf) with generated shell completion and key bindings
4. [ripgrep](https://github.com/BurntSushi/ripgrep)
5. [wezterm](https://github.com/wez/wezterm) config
6. Catppuccin Mocha themes for [bat](https://github.com/sharkdp/bat) and btop (themes only, the tools are not installed)
7. modular `~/.bashrc.d`, sourced from `~/.bashrc` by a chezmoi script
8. [opencode](https://opencode.ai) config and Claude Code settings

Binaries are downloaded by `.chezmoiexternal.toml` into `~/.local/bin`, so make sure it is on your `PATH`.

### Manual steps

1. Install build tools: `sudo apt install build-essential`
2. Commits are signed with `~/.ssh/id_ed25519.pub`. Create that key, or edit `dot_gitconfig.tmpl`, and add the public key to GitHub as a **signing key**.
3. `git-lfs` is required by the git config: `sudo apt install git-lfs`

### References (Thanks 🙏):

- [mel](https://codeberg.org/mel/dotfiles)
- [detro](https://github.com/detro/.bashrc.d)
