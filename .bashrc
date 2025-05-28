#
# ~/.bashrc
#
# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color | *-256color) color_prompt=yes ;;
esac

if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_prompt=yes
  else
    color_prompt=
  fi
fi

# Aliases
alias vi="nvim"
alias lz="lazygit"
alias rmdir="rm -r"
alias bat="batcat --theme base16"
alias j="autojump"
alias omp="oh-my-posh"
alias tmux="tmux -u"
alias printalias="alias | fzf"
alias printenv="printenv | fzf"

# config files
alias vconfig="vi ~/.dotfiles/.config/nvim/"
alias zconfig="vi ~/.dotfiles/.zshrc"
alias bashconfig="vi ~/.dotfiles/.bashrc"
alias dotfiles="vi ~/.dotfiles"
alias omz="vi ~/.oh-my-zsh"
alias alaconfig="vi ~/.dotfiles/.config/alacritty/alacritty.yml"
alias tmuxconfig="vi ~/.dotfiles/.config/tmux/tmux.conf"

# tmux alias
alias tmux-attach="tmux attach -t"

# git alias
alias gs="git status"

# Changing "ls" to "exa"
alias ls='exa --icons --color=always --group-directories-first'
alias la='exa -abghHliS --icons --color=always --group-directories-first'
alias ll='exa -a --icons --color=always --group-directories-first'
alias l='exa -F --icons --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'
alias lt="exa -T --icons --color=always"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
. "$HOME/.cargo/env"

# Ctrl-R command
export FZF_DEFAULT_OPTS=" \
--color=bg+:#1e1e2e,spinner:#7dcfff,hl:#73daca \
--color=fg:#cdd6f4,header:#73daca,info:#cba6f7,pointer:#e0af68 \
--color=marker:#7dcfff,fg+:#cdd6f4,prompt:#cba6f7,hl+:#73daca --height=60% --tmux 80% --border --prompt '∷ ' --pointer » --marker ⇒"
export FZF_DEFAULT_COMMAND="fd --type f --hidden --exclude .git --exclude node_modules --strip-cwd-prefix"

# Ctrl-T command
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --theme base16 --color=always --line-range :150 {}'"

# Alt-C command
export FZF_ALT_C_COMMAND="fd --type d . --color=never --hidden --exclude .git --exclude node_modules"
export FZF_ALT_C_OPTS="--walker-skip .git,node_modules,target --preview 'eza -T --icons --color=always {} | head -n 50'"

# setup fzf
[ -f ~/dotfiles/fzf/.fzf.bash ] && source ~/dotfiles/fzf/.fzf.bash

# starship
eval "$(starship init bash)"

. "/home/shubham/.deno/env"

. "$HOME/.local/share/../bin/env"
