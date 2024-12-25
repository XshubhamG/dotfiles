# --------------- #
# Plugin manager  #
# --------------- #
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# XDG_PATHS
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
export CARGO_HOME=${CARGO_HOME:="$XDG_DATA_HOME/cargo"}
export DOCKER_CONFIG=${DOCKER_CONFIG:="$XDG_CONFIG_HOME/docker"}
export GOPATH=${GOPATH:="$XDG_DATA_HOME/go"}
export NB_DIR=${NB_DIR:="$XDG_DATA_HOME/nb"}
export NBRC_PATH=${NBRC_PATH:="$XDG_CONFIG_HOME/nbrc"}
export GTK2_RC_FILES=${GTK2_RC_FILES:="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"}

# Source zinit
source "${ZINIT_HOME}/zinit.zsh"

# --------------- #
# presist history #
# --------------- #
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS

# -------------- #
# Zstyle command #
# -------------- #
# setopt no_list_ambiguous
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -T --icons --color=always $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -T --icons --color=always $realpath'
zstyle ':fzf-tab:*' fzf-bindings 'space:accept'
zstyle ':fzf-tab:*' use-fzf-default-opts yes
zinit cdreplay -q

# -------------- #
#     Plugins    #
# -------------- #
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
source ~/.zcolors

# -------------- #
#     PATH       #
# -------------- #
export PATH="$PATH:~/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.local/share/cargo/bin"
export PATH="$PATH:$HOME/.local/share/go/bin"
export MANPAGER='nvim +Man!'
export VISUAL=nvim
export EDITOR=nvim

# -------------- #
#    Aliases     #
# -------------- #
# alias vi="nvim"
alias vi="neovide"
alias vo="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"
alias tldr="tldr --list | fzf-tmux --preview 'tldr {1} --color=always' --preview-window=right,70% | xargs tldr"
alias lz="lazygit"
alias rmdir="rm -r"
alias ncdu="ncdu --color dark"
alias rr="ranger"
alias omp="oh-my-posh"
alias tmux="tmux -u"
alias printalias="alias | fzf"
alias printenv="printenv | fzf"
alias fastfetch="pokeget random --hide-name | fastfetch --file -"

# config files
alias vconfig="vi ~/dotfiles/.config/nvim/"
alias zconfig="vi ~/dotfiles/.zshrc"
alias bashconfig="vi ~/dotfiles/.bashrc"
alias dotfiles="vi ~/dotfiles"
alias alaconfig="vi ~/dotfiles/.config/alacritty/alacritty.yml"
alias tmuxconfig="vi ~/dotfiles/.config/tmux/tmux.conf"
alias wget="wget --hsts-file='$XDG_DATA_HOME/wget-hsts'"
alias svn="svn --config-dir $XDG_CONFIG_HOME/subversion"

# tmux alias
alias tmux-attach="tmux attach -t"

# git alias
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gp="git push"
alias gl="git log"

# Changing "ls" to "exa"
alias ls='exa --icons --color=always --group-directories-first'
alias la='exa -abhHlS --icons --color=always --group-directories-first'
alias ll='exa -a --icons --color=always --group-directories-first'
alias l='exa -F --icons --color=always --group-directories-first'
alias l.='exa -a | grep -E "^\."'
alias lt="exa -aT --icons --color=always --level=2"

# ----------- #
#   thefuck   #
# ----------- #
eval $(thefuck --alias)

# ------------- #
# colorscript   #
# ------------- #
# colorscript -r

# ------------ #
#  info-fetch  #
# ------------ #
alias fetch='fm6000 -c "random"'
# fetch -m 8 -g 12 -l 23 -dog
# neofetch
fastfetch

# ------------- #
#     FZF       #
# ------------- #

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
[ -f ~/dotfiles/fzf/.fzf.zsh ] && source ~/dotfiles/fzf/.fzf.zsh

# --------------- #
# starship prompt #
# --------------- #
eval "$(starship init zsh)"

# bun completions
[ -s "/home/shubham/.bun/_bun" ] && source "/home/shubham/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# nvim select
function nvims() {
  items=("default" "kickstart" "LazyVim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config ⇒" --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

# keybinds
bindkey -e
bindkey -s ^a "nvims\n"
bindkey "^p" history-search-backward
bindkey "^n" history-search-forward
. "/home/shubham/.deno/env"
