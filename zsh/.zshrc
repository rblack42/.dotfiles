# update search paths for easy access to commands
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/rblack/bin:/usr/local/bin:$PATH"

# set aliases for common commands
source ~/.zsh_aliases
#<!-- BEGIN ANSIBLE MANAGED BLOCK -->
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
#<!-- END ANSIBLE MANAGED BLOCK -->
eval "$(direnv hook zsh)"

# set hunspell dictionary
export DICPATH="$HOME/_sys/dict"

export PATH="/Users/rblack/.config/emacs/bin:$PATH"
