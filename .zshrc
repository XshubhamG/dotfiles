# --------------- #
# presist history #
# --------------- #
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt HIST_IGNORE_SPACE 
setopt HIST_IGNORE_ALL_DUPS

export PATH=$PATH:~/.local/bin

# -------------- #
# Zstyle command #
# -------------- #
setopt no_list_ambiguous
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# -------------- #
#    Aliases     #
# -------------- #   
alias vi="nvim"
alias vo="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"
alias lz="lazygit"
alias rmdir="rm -r"
alias bat="bat"
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
fetch -m 8 -g 12 -l 23 -dog

# ------------- #
#     FZF       #
# ------------- #

# Ctrl-R command
export FZF_DEFAULT_OPTS=" \
--color=bg+:#1e1e2e,bg:#11111e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 --height=100% --border --prompt '∷ ' --pointer ▶ --marker ⇒"
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
export PATH="$BUN_INSTALL/bin:$PATH"

# cargo 
export PATH="$PATH:$HOME/.cargo/bin"
