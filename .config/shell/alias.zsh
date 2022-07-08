# Terminal Shortcuts
alias e='exit'
alias se='sudoedit'
alias s='sudo'
alias v='nvim'
alias r='ranger'

# Configs
alias cfv='nvim ~/.config/nvim/init.vim'
alias cfa='nvim ~/.config/shell/alias.zsh'
alias cfg='ranger ~/.config/'
alias cfz='nvim ~/.zshrc'
alias cfe='nvim ~/.zshenv'

# Pacman Shortcuts
alias pi='yay -Sy'
alias pr='yay -Rs'
alias pq='yay -Q | grep'
alias ps='yay -Ss'

# Git Shortcuts
alias g='git'
alias gst='git status'
alias gc='git commit'
alias ga='git add'
alias gpl='git pull'
alias gpom='git pull origin master'
alias gp='git push'
alias gpuom='git push origin master'
alias gd='git diff'
alias gch='git checkout'
alias gnb='git checkout -b'
alias gac='git add . && git commit'
alias grs='git restore --staged .'
alias gre='git restore'
alias grt='git reset'
alias gr='git remote'
alias gcl='git clone'
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gt='git ls-tree -r master --name-only'
alias grm='git remote'
alias gb='git branch'
alias gm='git merge'
alias gf='git fetch'

# Locations
alias c='~/.local/configs'
alias d='~/Documents'
alias src='~/.local/src'
