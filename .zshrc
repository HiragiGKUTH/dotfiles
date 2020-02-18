setopt IGNOREEOF

export LANG=ja_JP.UTF-8
export PATH="$PATH" # insert path if you want

autoload -Uz colors
colors

autoload -Uz compinit
compinit

bindkey -e

setopt share_history
setopt histignorealldups

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt correct

alias ls='ls --color=auto -h'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias l1='ls -1'

alias mkdir='mkdir -p'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

alias vim='nvim'

# prompt
PROMPT="%{${fg[cyan]}%}%n%{${reset_color}%} On %{${fg[yellow]}%}Weblio%{${reset_color}%}
〉"


# git
RPROMPT="%{${fg[green]}%}[%~]%{${reset_color}%}"
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
