# --------------- #
# presist history #
# --------------- #
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt HIST_IGNORE_SPACE 
setopt HIST_IGNORE_ALL_DUPS

# -------------- #
#     PATH       #
# -------------- #    
export PATH=$PATH:~/.local/bin
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$BUN_INSTALL/bin:$PATH"
export MANPAGER='nvim +Man!'

# -------------- #
# Zstyle command #
# -------------- #
setopt no_list_ambiguous
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# -------------- #
#    Aliases     #
# -------------- #   
# alias vi="nvim"
alias vi="neovide"
alias vo="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs neovide"
alias lz="lazygit"
alias rmdir="rm -r"
alias ncdu="ncdu --color dark"
# alias bat="bat --theme Dracula"
alias j="autojump"
alias omp="oh-my-posh"
alias tmux="tmux -u"
alias printalias="alias | fzf"
alias printenv="printenv | fzf"

# config files
alias vconfig="vi ~/dotfiles/.config/nvim/"
alias zconfig="vi ~/dotfiles/.zshrc"
alias bashconfig="vi ~/dotfiles/.bashrc"
alias dotfiles="vi ~/dotfiles"
alias alaconfig="vi ~/dotfiles/.config/alacritty/alacritty.yml"
alias tmuxconfig="vi ~/dotfiles/.config/tmux/tmux.conf"

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
alias la='exa -abghHliS --icons --color=always --group-directories-first'
alias ll='exa -a --icons --color=always --group-directories-first'
alias l='exa -F --icons --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'
alias lt="exa -T --icons --color=always"

# ----------- #
#   thefuck   #
# ----------- #
eval $(thefuck --alias)

# ------------- #
# colorscript   #
# ------------- #
# colorscript -r

# ------------ #
#   fm6000     #
# ------------ #
alias fetch='fm6000 -c "random"' 
# fetch -m 8 -g 12 -l 23 -dog
neofetch

# ------------- #
#     FZF       #
# ------------- #

# Ctrl-R command
export FZF_DEFAULT_OPTS=" \
--color=bg+:#1a1b26,spinner:#7dcfff,hl:#73daca \
--color=fg:#cdd6f4,header:#73daca,info:#cba6f7,pointer:#e0af68 \
--color=marker:#7dcfff,fg+:#cdd6f4,prompt:#cba6f7,hl+:#73daca --height=100% --border --prompt '∷ ' --pointer » --marker ⇒"
export FZF_DEFAULT_COMMAND="fd --type f --hidden"

# Ctrl-T command
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --theme base16 --color=always --line-range :50 {}'"

# Alt-C command
export FZF_ALT_C_COMMAND="fd --type d . --color=never --hidden"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 30'"

# setup fzf
[ -f ~/dotfiles/fzf/.fzf.zsh ] && source ~/dotfiles/fzf/.fzf.zsh

# -------------- #
#     Plugins    #
# -------------- #
source ~/dotfiles/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh-plugins/zcolors/zcolors.plugin.zsh
source ~/.zcolors 

# --------------- #
# starship prompt #
# --------------- #
eval "$(starship init zsh)"

# bun completions
[ -s "/home/shubham/.bun/_bun" ] && source "/home/shubham/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
