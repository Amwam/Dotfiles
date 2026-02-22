eval "$(starship init zsh)"
eval "$(direnv hook zsh)"

# git aliases
alias gst='git status -sb'
alias g='git'
alias glg="g lg"
alias glga="g lga"
alias gbr="git branch -avv"
alias gb="gbr"
alias gf="git fetch --all --prune --progress"
alias gd='git diff'
alias gdc='git diff --cached'

alias vi='nvim'
alias vim='nvim'

# Case insensitive cd
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

export EDITOR='nvim'

# Edit in vim mode
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

if command -v fzf >/dev/null 2>&1; then
  source <(fzf --zsh)
  source ~/.config/zsh/scripts/fzf/git.zsh
  source ~/.config/zsh/scripts/fzf/docker.zsh
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

# Share history between sessions
setopt share_history
if command -v atuin >/dev/null 2>&1; then
  eval "$(atuin init zsh)"
else
  echo "atuin not installed for better shell history, skipping setup"
fi


if command -v op >/dev/null 2>&1; then
  source ${HOME}/.config/op/plugins.sh
else
  echo "1Password CLI (op) is not installed. Please install it to enable 1Password CLI features."
fi

export PATH="$HOME/.local/bin:$PATH"
