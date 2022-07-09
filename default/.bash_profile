# Load system specific bash config for exported PATH, etc.
[ -r ~/.bashrc ] && source ~/.bashrc

cat << EOF

██     ██ ███████ ██       ██████  ██████  ███    ███ ███████ 
██     ██ ██      ██      ██      ██    ██ ████  ████ ██      
██  █  ██ █████   ██      ██      ██    ██ ██ ████ ██ █████   
██ ███ ██ ██      ██      ██      ██    ██ ██  ██  ██ ██      
 ███ ███  ███████ ███████  ██████  ██████  ██      ██ ███████ 

                Soumik "griimick" Pradhan
            
             (Loading your ~/.bash_profile...)
EOF

# ls aliases

alias ll='ls -alF'
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


