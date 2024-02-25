# Setup fzf
# ---------
if [[ ! "$PATH" == */home/shubh-deb/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/shubh-deb/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/shubh-deb/.fzf/shell/completion.bash"

# Key bindings
# ------------
source "/home/shubh-deb/.fzf/shell/key-bindings.bash"
