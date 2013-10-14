export PGHOST=localhost

# Export user bin PATH ahead of system
export PATH=/usr/local/bin:$PATH

# Add RVM to PATH
export PATH=$PATH:$HOME/.rvm/bin

# Add NPM to PATH
export PATH=$PATH:/usr/local/share/npm/bin

# git aliases
alias gs='git status'
alias ga='git add -A'
alias gd='git diff'
alias gap='git add -p'
alias gam='git commit --amend'
alias gl='git log --stat'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gnotrack='git update-index --assume-unchanged'
alias gtrack='git update-index --no-assume-unchanged'
alias glistnotrack='git ls-files -v | grep "^h"'
function gblame() { git blame $@ | sort -b -k 3}

#general aliases
alias lsnc='ls --color=never'