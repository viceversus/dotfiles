# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias g='git'
alias gco='git checkout'
alias gb='git branch'
alias gst='git status'
alias gs='git status -sb'
alias gd='git diff'
alias gdc='git diff --cached'
alias ggp='git push'
alias ggp!='git push --force'
alias ggpu='git push -u origin'
alias ggl='git pull'
alias gglr='git pull --rebase'
alias gaa='git add -A'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gl='git log'
alias gm='git merge --no-ff'
alias grm='git rebase master'
alias gr='git rebase'
alias gci="checkout_branch_interactive"
