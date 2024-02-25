# Setup fzf
# ---------
if [[ ! "$PATH" == */home/shubh-deb/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/shubham/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/shubham/.fzf/completion.zsh"

# Key bindings
# ------------
source "/home/shubham/.fzf/key-bindings.zsh"
