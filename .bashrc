source /usr/share/defaults/etc/profile


#######################
# Modified by Antonio #
#######################

# PowerlineGO settings
function _update_ps1() {
    PS1="$(~/go/bin/powerline-go -error $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Neovim alias, vi, vim
alias vi='nvim'
alias vim='nvim'

# vim-like movement in bash
set -o vi
# exit insert mode by typing 'jk' or "remap" esc to 'jk'
bind '"jk":vi-movement-mode'

# Set NeoVim as the default editor for PostGreSQL
export PSQL_EDITOR="/usr/bin/nvim"
