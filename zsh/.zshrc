
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"


# git aliases
alias gst='git status -sb'
alias g='git'
# alias glg="g lg"
# alias glga="g lga"
alias gbr="git branch -avv"
alias gb="gbr"
alias gf="git fetch --all --prune --progress"
alias gdc='git diff --cached'


alias vi='nvim'
alias vim='nvim'


# Case insensitive cd
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

export EDITOR='nvim'


if command -v fzf >/dev/null 2>&1; then
  source <(fzf --zsh)
else
  echo "fzf is not installed. Please install fzf to enable this feature."
fi

if command -v bat >/dev/null 2>&1; then
  alias cat=bat
else
  echo "bat (better cat) is not installed. Please install bat to enable this feature."
fi


if command -v eza >/dev/null 2>&1; then
    alias ls=eza
else
    echo "eza (better ls) not installed"
fi