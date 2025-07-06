
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"


alias gst='git status -sb'
alias g='git'

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