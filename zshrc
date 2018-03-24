# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export EDITOR="atom"

# Allow for functions in the prompt.
setopt PROMPT_SUBST

# Get the name of the branch we are on
function parse_git_branch() {
  git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1) /";
}

PS1="%~ \$(parse_git_branch)\$" 

alias g="git"
alias ga="git add"
alias gd="git diff"
alias gm="git merge --no-ff"
alias gst="git status"
alias gc="git commit -m"
alias gco="git checkout"
alias gr="git reset --soft HEAD^"

alias be="bundle exec"
alias ll="ls -la"

alias rc="bundle exec rails console"
alias rs="bundle exec rails server"
alias td="tail -f log/development.log"

alias fs="bundle exec foreman start"

alias ..="cd .."
alias ...="cd ../.."

alias grep="grep --color=auto"

export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

