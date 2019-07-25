# -- Zsh -----------------------------------------------------------------------
# Path to your oh-my-zsh configuration.
ZSH="/Users/mike/.dotfiles/.oh-my-zsh"

# -- Editor --------------------------------------------------------------------
EDITOR="code -n -w"

# -- Theme ---------------------------------------------------------------------
# Set name of the theme to load.
# Look in /Users/mike/.dotfiles/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="norm"

# -- Plugins -------------------------------------------------------------------
# Plugins can be found in /Users/mike/.dotfiles/.oh-my-zsh/plugins/
# Custom plugins may be added to /Users/mike/.dotfiles/.oh-my-zsh/custom/plugins/
#
# Which plugins would you like to load?
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git history history-substring-search z zsh-syntax-highlighting)

# -- Oh My Zsh -----------------------------------------------------------------
source $ZSH/oh-my-zsh.sh

# -- Options -------------------------------------------------------------------
unsetopt correct_all
unsetopt correct

# -- Aliases -------------------------------------------------------------------
source $HOME/.dotfiles/.aliases

if [[ -f "$HOME/.aliases" ]]; then
    source $HOME/.aliases
fi

# -- Rbenv ---------------------------------------------------------------------
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# -- Term ----------------------------------------------------------------------
TERM=xterm-256color

# -- Update --------------------------------------------------------------------
dotfiles
