export EDITOR=nvim
export VISUAL="$EDITOR"
export TERM=xterm-256color

export PATH="$HOME/.symfony5/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export HOMEBREW_NO_AUTO_UPDATE=1

alias dr='$(git rev-parse --show-toplevel)/vendor/bin/drush'
alias fetch='hyfetch -b fastfetch'
alias what="compgen -c | sort -u | fzf --height 40% --reverse | xargs -I {} curl cheat.sh/{}"

eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

eval $(thefuck --alias)

export PATH="$HOME/bin:$PATH"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

meow | lolcat

# Created by `pipx` on 2024-10-24 07:44:15
export PATH="$PATH:/home/jasper/.local/bin"

# Hardware video encoding api driver
export LIBVA_DRIVER_NAME=nvidia
