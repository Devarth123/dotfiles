# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
fastfetch
export XCURSOR_SIZE=24
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#    source /usr/share/zsh/scripts/zplug/init.zsh 

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
export MOZ_ENABLE_WAYLAND=1
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
#neofetch
#export TERM=xterm-256color 
# Initialization code that may require console input (password prompts, [y/n]
# # confirmations, etc.) must go above this block; everything else may go below
# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
source ~/.cargo/env
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="vi"

# Set name of the theme to load --- if set to "random", it will
fcd() {
  cd $(find -type f | fzf)
}
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(zsh-autosuggestions zsh-syntax-highlighting git)
source $ZSH/oh-my-zsh.sh
alias q='exit'
alias cr='cargo r'
alias sp='sudo powerpill'
alias pp='powerpill'
alias ci='cargo init'
alias lg='lazygit'
alias ct='cargo t'
alias gitp='
            print "commit message " 
            read message
            print "what branch do u want to push to?"
            read branch
            git commit -am "${message}"
            git status
            git push origin ${branch}'
alias cac='cargo c'
alias cb='cargo b'
# alias gst='git status'
# alias n='nvim +Telescope\ oldfiles'
alias play='vlc ~/songs'
alias h="htop"
alias r='ranger'
alias pkg-r='paru -Qq | fzf | paru -Rns -'
alias pkg='paru -Sql | fzf | paru -S -'
alias bat='bat --theme=OneHalfDark'
alias trash='
            print "what do u want to trash: "
            read ans
            mv $ans ~/.trash'
alias dl='yt-dlp'
alias start='dbus-run-session gnome-shell --display-server --wayland'
alias d='doas'
alias ls='exa --color=always --group-directories-first --icons'  # all files and dirs
# alias re=' du -a  rust/optionT | awk '{print $2}' | fzf | xargs -r $EDITOR'
# alias pick='colorpicker | notify-send -'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

bindkey -v
# .zshrc
# autoload -U promptinit; promptinit
# prompt spaceship
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
 # [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# source ~/powerlevel10k/powerlevel10k.zsh-theme
# source ~/powerlevel10k/powerlevel10k.zsh-theme
# source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
alias l='ls -lah --git'

#eval "$(starship init zsh)"
alias emerge-search='emerge --search'
alias emerge=' emerge -a'
alias b='btm'
alias uu="cd .."
alias hx='helix'
alias uuu="cd ..."
alias vh="vi ~/.config/hypr/hyprland.conf"
alias cg='cargo'
alias uuuu="cd ...."

#alias sway='dbus-launch --exit-with-session sway'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
eval "$(/usr/bin/zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval 
            fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=zsh;
                export TF_ALIAS=fuck;
                TF_SHELL_ALIASES=$(alias);
                export TF_SHELL_ALIASES;
                TF_HISTORY="$(fc -ln -10)";
                export TF_HISTORY;
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
                ) && eval $TF_CMD;
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                test -n "$TF_CMD" && print -s $TF_CMD
            }
        
eval 
            fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=zsh;
                export TF_ALIAS=fuck;
                TF_SHELL_ALIASES=$(alias);
                export TF_SHELL_ALIASES;
                TF_HISTORY="$(fc -ln -10)";
                export TF_HISTORY;
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
                ) && eval $TF_CMD;
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                test -n "$TF_CMD" && print -s $TF_CMD
            }
        
