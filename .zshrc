# --------------- #
# Plugin manager  #
# --------------- #
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

#  Download zinit, if it's not there yet
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
export GTK2_RC_FILES=${GTK2_RC_FILES:="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"}
# export ELECTRON_OZONE_PLATFORM_HINT=wayland
export XDG_DATA_DIRS=${XDG_DATA_DIRS:="/usr/share/applications"}

# Source zinit
source "${ZINIT_HOME}/zinit.zsh"

# --------------- #
# presist history #
# --------------- #
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HISTDUP=erase
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS

# --------------- #
# ZSH Basic Option #
# --------------- #
setopt autocd
setopt correct
setopt interactivecomments
setopt magicequalsubst
setopt nonomatch
setopt notify
setopt numericglobsort
setopt promptsubst
setopt menucomplete

# -------------- #
# Zstyle command #
# -------------- #
# setopt no_list_ambiguous
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list \
		'm:{a-zA-Z}={A-Za-z}' \
		'+r:|[._-]=* r:|=*' \
		'+l:|=*'
zstyle ':vcs_info:*' formats ' %B%s-[%F{magenta}%f %F{yellow}%b%f]-'
zstyle ':fzf-tab:*' fzf-flags --style=full --height=50% --pointer '» ' \
                --color 'pointer:green:bold,bg+:-1:,fg+:green:bold,info:blue:bold,marker:yellow:bold,hl:gray:bold,hl+:yellow:bold' \
                --input-label ' Search ' --color 'input-border:blue,input-label:blue:bold' \
                --list-label ' Results ' --color 'list-border:green,list-label:green:bold' \
                --preview-label ' Preview ' --color 'preview-border:magenta,preview-label:magenta:bold'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --icons=always --color=always -a $realpath'
zstyle ':fzf-tab:complete:eza:*' fzf-preview 'eza -1 --icons=always --color=always -a $realpath'
zstyle ':fzf-tab:complete:bat:*' fzf-preview 'bat --color=always --theme=base16 $realpath'
zstyle ':fzf-tab:complete:nvim:*' fzf-preview 'bat --color=always --theme=base16 $realpath'
zstyle ':fzf-tab:*' fzf-bindings 'space:accept'
zstyle ':fzf-tab:*' accept-line enter
zinit cdreplay -q

# -------------- #
#     Plugins    #
# -------------- #
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
source ~/dotfiles/manual-zsh-plugins/zcolors/zcolors.plugin.zsh
source ~/.zcolor

# -------------- #
#     Plugins    #
# -------------- #
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found
zinit snippet OMZP::git

# -------------- #
#     PATH       #
# -------------- #
export PATH="$PATH:~/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/share/cargo/bin"
export PATH="$PATH:$HOME/.local/share/go/bin"
export PATH="$PATH:$HOME/.config/emacs/bin"
export JAVA_HOME=/usr/lib/jvm/java-24-openjdk
export PATH=$JAVA_HOME/bin:$PATH

export MANPAGER='nvim +Man!'
export VISUAL=nvim
export EDITOR=nvim
export PAGER=bat

# -------------- #
#    Aliases     #
# -------------- #

alias vi="neovide"
# alias code="cursor --ozone-platform=wayland &"
alias tldr="tldr --list | fzf-tmux --preview 'tldr {1} --color=always' --preview-window=right,70% | xargs tldr"
alias lz="lazygit"
alias rm="trash -v"
alias ncdu="ncdu --color dark"
alias tnew='tmux new -s "$(basename "$PWD")"'
alias printalias="alias | fzf"
alias printenv="printenv | fzf"
alias ff="pokeget random --hide-name | fastfetch --file -"
# alias spotify="spotify --ozone-platform=wayland"

# config files
alias vconfig="vi ~/dotfiles/.config/nvim/"
alias zconfig="vi ~/dotfiles/.zshrc"
alias bashconfig="vi ~/dotfiles/.bashrc"
alias dotfiles="vi ~/dotfiles"
alias tmuxconfig="vi ~/dotfiles/.config/tmux/tmux.conf"
alias wget="wget --hsts-file='$XDG_DATA_HOME/wget-hsts'"
alias svn="svn --config-dir $XDG_CONFIG_HOME/subversion"

# help with bat
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# tmux alias
alias tmux-attach="tmux attach -t"

# git alias
alias gs="git status"
alias ga="git add"
alias gc="git commit"
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

alias pipes='/usr/bin/pipes-rs'

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
    items=("lazyvim" "default_vim")
    config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config ⇒" --height=~50% --layout=reverse --border --exit-0)
    if [[ -z $config ]]; then
        echo "Nothing selected"
        return 0
    elif [[ $config == "lazyvim" ]]; then
        config=""
    fi
    NVIM_APPNAME=$config nvim $@
}

# keybinds
bindkey -v
bindkey -s ^a "nvims\n"

export PATH=$PATH:/home/shubham/.spicetify

# uv python
. "$HOME/.local/share/../bin/env"
eval "$(uv generate-shell-completion zsh)"

