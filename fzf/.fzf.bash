# Setup fzf
# ---------
if [[ ! "$PATH" == */home/shubh-deb/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/shubh-deb/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/shubham/dotfiles/fzf/commands/completion.zsh"

# Key bindings
# ------------
source "/home/shubham/dotfiles/fzf/commands/key-bindings.zsh"
