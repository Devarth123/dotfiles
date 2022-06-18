# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export PATH="$HOME/.cargo/bin:$PATH"
if [[ "nvim" != $(ps -p $(ps -p $$ -o ppid=) o args= | awk '{print $1 }') ]]
then
    neofetch
#    pfetch
fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="3den"
plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
alias pls='sudo'
alias q='exit'
alias cr='cargo r'
alias ci='cargo init'
alias ct='cargo t'
alias gitp='
            print "commit message " 
            read message
            git commit -am "${message}"
            git status
            git push origin master'
alias cc='cargo c'
alias cb='cargo b'
alias rr='ranger'
alias gst='git status'
alias i='>> ~/logs/pacman_install.log'
alias play='vlc ~/songs'
alias h="htop"
alias pkg-r='yay -Qq | fzf | yay -Rns -'
alias pkg='yay -Sql | fzf | yay -S -'
alias bat='bat --theme=OneHalfDark'
alias trash='
            print "what do u want to trash: "
            read ans
            mv $ans ~/.trash'
alias c='clear'
alias dl='yt-dlp'
alias n='nvim'
alias p='sudo pacman'
alias ls='exa --color=always --group-directories-first --icons'  # all files and dirs
# alias re=' du -a  rust/optionT | awk '{print $2}' | fzf | xargs -r $EDITOR'
# alias pick='colorpicker | notify-send -'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# eval "$(starship init zsh)"
# autoload -Uz compinit
# compinit
# autoload -U compinit && compinit -u

eval "$(starship init zsh)"
bindkey -v
# .zshrc
# autoload -U promptinit; promptinit
# prompt spaceship
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
 # [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# source ~/powerlevel10k/powerlevel10k.zsh-theme
# source ~/powerlevel10k/powerlevel10k.zsh-theme
# source ~/powerlevel10k/powerlevel10k.zsh-theme
