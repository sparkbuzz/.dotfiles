# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LANG=en_US.UTF-8
export PATH=$HOME/bin:/usr/local/bin:$PATH

setopt  autocd autopushd

# Source zsh plugins
#
source $HOME/.zsh_plugins.sh

# Aliases
#
alias brew.rm-all='brew remove --force $(brew list --formula) && brew remove --cask --force $(brew list)'
alias vim='nvim'
alias ls='ls --color=auto'
alias la='ls -lash --color=auto'
alias tree='tree -C'

# History
#
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt hist_verify
setopt share_history

# Up arrow
bindkey "^[[A" up-line-or-beginning-search
# Down arrow
bindkey "^[[B" down-line-or-beginning-search

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/Projects/other/.dotfiles/stow/zsh/.p10k.zsh.
[[ ! -f ~/Projects/other/.dotfiles/stow/zsh/.p10k.zsh ]] || source ~/Projects/other/.dotfiles/stow/zsh/.p10k.zsh
