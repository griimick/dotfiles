# Load system specific bash config for exported PATH, etc.
[ -r ~/.bashrc ] && source ~/.bashrc

cat << EOF
                      ▄▄██████████▄▄             
                      ▀▀▀   ██   ▀▀▀             
              ▄██▄   ▄▄████████████▄▄   ▄██▄     
            ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   
           ████▄ ▄███▀              ▀███▄ ▄████  
          ███▀█████▀▄████▄      ▄████▄▀█████▀███ 
          ██▀  ███▀ ██████      ██████ ▀███  ▀██ 
           ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  
              ███           ▀▀           ███     
              ██████████████████████████████     
          ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ 
          ███  ███ ███   ██    ██   ███▄███  ███ 
          ▀██▄████████   ██    ██   ████████▄██▀ 
           ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  
            ▀███▄  ▀███████    ███████▀  ▄███▀   
              ▀███    ▀▀██████████▀▀▀   ███▀     
                ▀     ▄▄▄   ██   ▄▄▄      ▀      
                      ▀▀███████████▀▀            
                                                 
                Soumik "griimick" Pradhan
            
             (Loading your ~/.bash_profile...)
EOF

# nvim fork feels faster with all the plugins 
# both refer same plugins and config, so 95% similar
# 5% is all it takes to become BLAZINGLY FAST!!

alias vi='vim'
alias vim='nvim'

alias gcc=/usr/bin/gcc
alias g++=/usr/bin/g++
alias cc=/usr/bin/gcc
alias c++=/usr/bin/g++

# ls aliases

alias ll='ls -alF --group-directories-first'
alias la='ls -A'
alias l='ls -CF'

# git aliases

alias g='git'
# add
alias ga='git add'
# branch
alias gb='git branch'
# commit
alias gc='git commit -v'
# branch
alias gcb='git checkout -b'
alias gco='git checkout'
# reset
alias gus='git reset HEAD'
# diff
alias gd='git diff'
alias gds='git diff --staged'
# log
alias gg='git log --graph --pretty=format:'\''%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset'\'' --abbrev-commit --date=relative'
alias ggf='git log --graph --date=short --pretty=format:'\''%C(auto)%h %Cgreen%an%Creset %Cblue%cd%Creset %C(auto)%d %s'\'''
alias ggs='gg --stat'
alias ggup='git log --branches --not --remotes --no-walk --decorate --oneline' # FROM https://stackoverflow.com/questions/39220870/in-git-list-names-of-branches-with-unpushed-commits
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gnew='git log HEAD@{1}..HEAD@{0}' # Show commits since last pull, see http://blogs.atlassian.com/2014/10/advanced-git-aliases/
alias gwc='git whatchanged'
# status
alias gs='git status'

alias erg='rg --color=always --vimgrep'

export BAT_THEME="gruvbox-dark"

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,output,node_modules,*.swp,dist,*.coffee}/*" 2> /dev/null'
