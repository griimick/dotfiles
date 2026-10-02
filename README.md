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

You will be prompted for your name, email (used for git) and a machine profile.

### Profiles

The profile is asked once at `chezmoi init` and saved in `~/.config/chezmoi/chezmoi.toml`:

| Profile | For | Extra |
|---|---|---|
| `workstation` (default) | laptops and desktops you sit at | |
| `homelab` | the always-on home box | opencode server (systemd user service, alias) and its password |
| `sandbox` | throwaway VMs | |

To skip the prompt: `chezmoi init --apply --promptChoice profile=homelab griimick`.
Machines initialised before profiles existed behave like `workstation`.

### What you get

1. [nvim](https://github.com/neovim/neovim) with [LazyVim](https://github.com/LazyVim/LazyVim), installed from the release tarball into `~/.local/share/nvim-dist` (no snap or sudo needed)
2. [starship](https://github.com/starship/starship) prompt
3. [fzf](https://github.com/junegunn/fzf) with generated shell completion and key bindings
4. [ripgrep](https://github.com/BurntSushi/ripgrep)
5. [wezterm](https://github.com/wez/wezterm) config
6. [bat](https://github.com/sharkdp/bat) and [btop](https://github.com/aristocratos/btop) with Catppuccin Mocha themes
7. modular `~/.bashrc.d`, sourced from `~/.bashrc` by a chezmoi script
8. [opencode](https://opencode.ai) and [Claude Code](https://claude.com/claude-code), installed on every machine, with their settings
9. [gh](https://cli.github.com), plus a per-machine SSH key generated on first apply (add it to GitHub as an authentication and a signing key)

Binaries are downloaded by `.chezmoiexternal.toml` into `~/.local/bin`, so make sure it is on your `PATH`.

### Manual steps

1. Install build tools: `sudo apt install build-essential`
2. Commits are signed with `~/.ssh/id_ed25519.pub`. Create that key, or edit `dot_gitconfig.tmpl`, and add the public key to GitHub as a **signing key**.
3. `git-lfs` is required by the git config: `sudo apt install git-lfs`

### References (Thanks 🙏):

- [mel](https://codeberg.org/mel/dotfiles)
- [detro](https://github.com/detro/.bashrc.d)
