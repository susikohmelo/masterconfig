# load modules
zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors
autoload -U promptinit && promptinit
setopt PROMPT_SUBST

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
bindkey "^b" backward-word
#bindkey "^l" forward-word
bindkey "^w" forward-word

# ALACRITTY SPECIFIC
function toggler(){ source ~/.config/alacritty/./themetoggler.sh }
zle -N toggler
bindkey "^\`" toggler

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


# PROMPT COLORS
export PROMPT_TIME_FG="#e5e1d8"
export PROMPT_TIME_BG="#000000"
#
export PROMPT_NAME_FG="#000000"
export PROMPT_NAME_BG="#56a9e9"
#
export PROMPT_PWD_FG="#000000"
export PROMPT_PWD_BG="#e5e1d8"

export PROMPT_ARROW_FG="#e5e1d8"
export PROMPT_ARROW_BG="#000000"

# The prompt itself
NEWLINE=$'\n'
#PROMPT="${NEWLINE}%F{#FFFFFF}%D{%K%M} %B%K{#56a9e9}%F{#000000} %n %K{#e0e2db}%F{#000000} %~ %f%k %b❯ "

#PROMPT="${NEWLINE}%K{${PROMPT_TIME_BG}}%F{${PROMPT_TIME_FG}}%D{%K%M} \
#%B%K{${PROMPT_NAME_BG}}%F{${PROMPT_NAME_FG}} \
#%n %K{${PROMPT_PWD_BG}}%F{${PROMPT_PWD_FG}} %~ \
#%f%k %b%K{%${PROMPT_ARROW_BG}}%F{${PROMPT_ARROW_FG}}❯ "

function print_prompt() {
echo -n "${NEWLINE}%K{${PROMPT_TIME_BG}}%F{${PROMPT_TIME_FG}}%D{%K%M} \
%B%K{${PROMPT_NAME_BG}}%F{${PROMPT_NAME_FG}} \
%n %K{${PROMPT_PWD_BG}}%F{${PROMPT_PWD_FG}} %~ \
%f%k %b%K{%${PROMPT_ARROW_BG}}%F{${PROMPT_ARROW_FG}}❯ " }

PROMPT='$(print_prompt)'

# autosuggestions
# requires zsh-autosuggestions
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# syntax highlighting
# requires zsh-syntax-highlighting package
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
