# load modules
zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors

# CPP class generation
USER=ljylhank
MAIL=ljylhank@student.hive.fi
alias cgen="/home/susi/42_cpp_class_generator/cgen.sh"

alias vim="nvim"
export VISUAL=nvim
export EDITOR="$VISUAL"
export PATH="$PATH:/usr/local/i386elfgcc/bin"

export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="$PATH:/usr/local/i386elfgcc/bin"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias c='clear'

# cmp opts
zstyle ':completion:*' menu select # tab opens cmp menu
zstyle ':completion:*' special-dirs true # force . and .. to show in cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;32 # colorize cmp menu
# zstyle ':completion:*' file-list true # more detailed list
zstyle ':completion:*' squeeze-slashes false # explicit disable to allow /*/ expansion

# main opts
setopt append_history inc_append_history share_history hist_ignore_all_dups # better history
# on exit, history appends rather than overwrites; history is appended as soon as cmds executed; history shared across sessions
setopt auto_menu menu_complete # autocmp first menu match
setopt autocd # type a dir to cd
setopt auto_param_slash # when a dir is completed, add a / instead of a trailing space
setopt no_case_glob no_case_match # make cmp case insensitive
#setopt globdots # include dotfiles
setopt extended_glob # match ~ # ^
setopt interactive_comments # allow comments in shell
unsetopt prompt_sp # don't autoclean blanklines
stty stop undef # disable accidental ctrl s

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
HISTCONTROL=ignoreboth # consecutive duplicates & commands starting with space are not saved

# fzf setup
#source <(fzf --zsh) # allow for fzf history widget

# binds
bindkey "^a" beginning-of-line
bindkey "^4" end-of-line
bindkey "^x" kill-line
bindkey "^h" backward-word
bindkey "^l" forward-word
#bindkey "^H" backward-kill-word
# ctrl J & K for going up and down in prev commands
#bindkey "^J" history-search-forward
#bindkey "^K" history-search-backward
#bindkey '^R' fzf-history-widget

# clear screen
function clear-screen-and-scrollback() {
  builtin echoti civis >"$TTY"
  builtin print -rn -- $'\e[H\e[2J' >"$TTY"
  builtin zle .reset-prompt
  builtin zle -R
  builtin print -rn -- $'\e[3J' >"$TTY"
  builtin echoti cnorm >"$TTY"
}
zle -N clear-screen-and-scrollback
bindkey '^R' clear-screen-and-scrollback

# set up prompt
NEWLINE=$'\n'
#PROMPT="${NEWLINE}%F{#FFFFFF}%D{%K%M %S} %B%K{#D17B0F}%F{#000000} %n %K{#e0e2db}%F{#000000} %~ %f%k %b❯ " # custom theme
#PROMPT="${NEWLINE}%F{#FFFFFF}%D{%K%M %S} %B%K{#FF0025}%F{#000000} %n %K{#e0e2db}%F{#000000} %~ %f%k %b❯ " # custom theme
#PROMPT="${NEWLINE}%F{#FFFFFF}%D{%K%M %S} %B%K{#62e2f4}%F{#000000} %n %K{#e0e2db}%F{#000000} %~ %f%k %b❯ " # custom theme
#PROMPT="${NEWLINE}%F{#FFFFFF}%D{%K%M %S} %B%K{#56a9e9}%F{#000000} %n %K{#e0e2db}%F{#000000} %~ %f%k %b❯ " # custom theme
PROMPT="${NEWLINE}%F{#FFFFFF}%D{%K%M} %B%K{#56a9e9}%F{#000000} %n %K{#e0e2db}%F{#000000} %~ %f%k %b❯ " # custom theme

# PROMPT="${NEWLINE}%K{#2E3440}%F{#E5E9F0}$(date +%_I:%M%P) %K{#3b4252}%F{#ECEFF4} %n %K{#4c566a} %~ %f%k ❯ " # nord theme
# PROMPT="${NEWLINE}%K{#32302f}%F{#d5c4a1} $0 %K{#3c3836}%F{#d5c4a1} %n %K{#504945} %~ %f%k ❯ " # warmer theme
# PROMPT="${NEWLINE}%K{$COL0}%F{$COL1}$(date +%_I:%M%P) %K{$COL0}%F{$COL2} %n %K{$COL3} %~ %f%k ❯ " # pywal colors, from postrun script

# echo -e "${NEWLINE}\033[48;2;46;52;64;38;2;216;222;233m $0 \033[0m\033[48;2;59;66;82;38;2;216;222;233m $(uptime -p | cut -c 4-) \033[0m\033[48;2;76;86;106;38;2;216;222;233m $(uname -r) \033[0m" # nord theme
# echo -e "${NEWLINE}\x1b[38;5;137m\x1b[48;5;0m it's$(date +%_I:%M%P) \x1b[38;5;180m\x1b[48;5;0m $(uptime -p | cut -c 4-) \x1b[38;5;223m\x1b[48;5;0m $(uname -r) \033[0m" # warmer theme

# autosuggestions
# requires zsh-autosuggestions
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# syntax highlighting
# requires zsh-syntax-highlighting package
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
