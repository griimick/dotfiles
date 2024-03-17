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

```
  sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init --apply griimick
```

### Uses:

1. [nvim](https://github.com/neovim/neovim) with [LazyVim](https://github.com/LazyVim/LazyVim)
2. [starship](https://github.com/starship/starship)
3. [fzf](https://github.com/junegunn/fzf)
4. [ripgrep](https://github.com/BurntSushi/ripgrep)
5. [wezterm](https://github.com/wez/wezterm)
6. [bat](https://github.com/sharkdp/bat)
