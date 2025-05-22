#!/bin/bash

# Configuration
BROWSER="brave"
SEARCH_URL="https://search.brave.com/search?q="
SEARCH_ICON="󰍉"  # Nerd Font search icon
HISTORY_FILE="$HOME/.local/share/rofi-brave-search/history"
MAX_HISTORY=10

# Create history directory and file if they don't exist
mkdir -p "$(dirname "$HISTORY_FILE")"
touch "$HISTORY_FILE"

# Function to clean and encode search query
clean_query() {
    echo "$1" | sed 's/ /+/g'
}

# Function to switch to Brave window using hyprctl
switch_to_brave() {
    # Wait a moment for the browser to open
    sleep 0.5
    # Focus the Brave window using its class
    hyprctl dispatch focuswindow "class:brave-browser"
}

# Function to add query to history
add_to_history() {
    local query="$1"
    # Create a temporary file
    local temp_file=$(mktemp)

    # Remove the query if it exists in history and add to the beginning
    if [ -s "$HISTORY_FILE" ]; then
        grep -v "^$query$" "$HISTORY_FILE" > "$temp_file"
    fi
    echo "$query" | cat - "$temp_file" > "$HISTORY_FILE"

    # Keep only the last MAX_HISTORY entries
    head -n "$MAX_HISTORY" "$HISTORY_FILE" > "$temp_file"
    mv "$temp_file" "$HISTORY_FILE"
}

# Function to show history
show_history() {
    if [ -s "$HISTORY_FILE" ]; then
        cat "$HISTORY_FILE"
    fi
}

# Get search query from rofi with history
query=$(show_history | rofi -dmenu -p "$SEARCH_ICON Search Brave: " -theme-str 'entry { placeholder: "Type to search..."; }')

# If query is empty, exit
if [ -z "$query" ]; then
    exit 0
fi

# Clean and encode the query
encoded_query=$(clean_query "$query")

# Add to history
add_to_history "$query"

# Open Brave browser with the search URL and switch to it
$BROWSER "$SEARCH_URL$encoded_query" &
switch_to_brave
