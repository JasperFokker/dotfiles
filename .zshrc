export EDITOR=nvim
export VISUAL="$EDITOR"

export PATH="$HOME/.symfony5/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export HOMEBREW_NO_AUTO_UPDATE=1

alias dr='$(git rev-parse --show-toplevel)/vendor/bin/drush'
alias fetch='hyfetch -b fastfetch'

eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

export PATH="$HOME/bin:$PATH"
