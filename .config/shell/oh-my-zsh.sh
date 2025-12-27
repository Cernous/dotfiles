# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="quantum"

# Plugins configuration
plugins=( git fzf vscode )

# Add zsh-completions to fpath
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh