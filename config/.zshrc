# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"

if [[ "nvim" != $(ps -p $(ps -p $$ -o ppid=) o args= | awk '{print $1 }') ]]
then
    neofetch | lolcat
fi
#
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
alias ncat='neofetch | lolcat'
alias pls='sudo'
alias rr="ranger"
alias dl='youtube-dl'
alias q='exit'
alias h="htop"
alias c='clear'
alias n='nvim'
alias p='sudo pacman'
alias ls='exa --color=always --group-directories-first --icons'  # all files and dirs
alias u='sudo pacman -Syyu'
# alias re=' du -a  rust/optionT | awk '{print $2}' | fzf | xargs -r $EDITOR'
alias re='du -a ~/rust/ | awk "{print $2}" | fzf | xargs -r $EDITOR'
alias se='du -a ~/ | awk "{print $2}" | fzf | xargs -r $EDITOR'
alias pac-r='sudo pacman -Rns'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
eval "$(starship init zsh)"
autoload -Uz compinit
compinit
# autoload -U compinit && compinit -u
bindkey -v
