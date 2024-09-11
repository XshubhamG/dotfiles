#
# ~/.bashrc
#
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
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
    xterm-color|*-256color) color_prompt=yes;;
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

# fzf customization
export FZF_DEFAULT_OPTS=" \
--color=bg+:#1e1e2e,bg:#11111e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 --height=100% --border --prompt '∷ ' --pointer ▶ --marker ⇒"
export FZF_DEFAULT_COMMAND="fd --type f --hidden"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'batcat --theme base16 --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND="fd --type d . --color=never --hidden"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 30'"


[ -f ~/.dotfiles/fzf/.fzf.bash ] && source ~/.dotfiles/fzf/.fzf.bash

# starship
eval "$(starship init bash)"

