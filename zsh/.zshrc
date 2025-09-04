# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"

bindkey -e
# up and down arrows for history search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Load and initialise completion system
autoload -Uz compinit
compinit

eval "$(starship init zsh)"

source $ZDOTDIR/aliases

if uwsm check may-start; then
    exec uwsm start hyprland-uwsm.desktop
fi
