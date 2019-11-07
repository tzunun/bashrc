source /usr/share/defaults/etc/profile


#######################
# Modified by Antonio #
#######################

##### PowerlineGO ######
function _update_ps1() {
    PS1="$(/home/antonio/go/bin/powerline-go -error $? -condensed -colorize-hostname  -cwd-max-depth 2 -cwd-mode dironly)"
}

if [ "$TERM" != "linux" ] && [ -f "/home/antonio/go/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Neovim alias, vi, vim
alias vi='nvim'
alias vim='nvim'

# Conda environmnents alias
alias iono='conda activate iono'
alias py37='conda activate py37'
alias intel='conda activate intel'

# Kitty colorscheme
alias light="kitty @ set-colors -a '~/.config/kitty/kitty-themes/themes/Solarized_Light.conf'"

alias dark="kitty @ set-colors -a '~/.config/kitty/kitty-themes/themes/Solarized_Dark.conf'"

# vim-like movement in bash
set -o vi
# exit insert mode by typing 'jk' or "remap" esc to 'jk'
bind '"jk":vi-movement-mode'

# Set NeoVim as the default editor for PostGreSQL
export PSQL_EDITOR="/usr/bin/nvim"


. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
