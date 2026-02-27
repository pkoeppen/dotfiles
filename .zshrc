export PATH="$(brew --prefix)/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

alias vi='nvim'
alias vim='nvim'

function colorize() {
  local branch="$1"
  [[ -z $branch ]] && return
  if [[ -n "$(git status --porcelain 2>/dev/null)" ]]; then
    echo "%F{9}$branch%f" # Has untracked changes. 9 is bright red
  else
    echo "%F{10}$branch%f" # Clean. 10 is bright blue
  fi 
}

# Show git branch in prompt
function git_branch() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo "%F{blue}git:(%f%F{10}$(colorize "$branch")%f%F{blue})%f "
  fi
}

setopt prompt_subst
prompt='%~/ $(git_branch)%# '

autoload -Uz compinit && compinit

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
