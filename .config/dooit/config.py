# NOTE: colors

base = "#1e1e2e"
mantle = "#181825"
black = "#11111b"
white = "#cdd6f4"
grey = "#7f849c"
red = "#f38ba8"
frost_green = "#a6e3a1"
cyan = "#89dceb"
green = "#a6e3a1"
yellow = "#f9e2af"
blue = "#89b4fa"
magenta = "#cba6f7"
orange = "#f2cdcd"

# NOTE: General config

BACKGROUND = base  # background color of the app
BAR_BACKGROUND = black  # background color of bar
WORKSPACES_BACKGROUND = base  # background color for workspaces pane
TODOS_BACKGROUND = black  # background color for todos pane
BORDER_DIM = grey + " 50%"  # color for non-focused pane
BORDER_LIT = blue  # color for focused pane

# A comma-separated color tuple for foreground and background colors for title of un-focused pane
# It can be a single string as well, it will then use the `BORDER_DIM` as bg color
BORDER_TITLE_DIM = grey, mantle

# Same as above for focused pane
BORDER_TITLE_LIT = black, blue

SEARCH_COLOR = red  # highlight color when searching
YANK_COLOR = blue  # a color flash for yanking a todo/workspace/description
SAVE_ON_ESCAPE = False  # whether to cancel the todo or save it when esc is pressed. `False` means cancel
USE_DATE_FIRST = True  # whether to use dd-mm or mm-dd. True means day first

# This defines how the date is referenced in the Due Column
# See here: https://strftime.org/
DATE_FORMAT = "%d %h"
TIME_FORMAT = "%H:%M"  # use this format for time if time is non zero

# NOTE: workspace

EMPTY_WORKSPACE = [
    "󱅶",
    "No workspaces yet?",
    f"Press [{cyan}]'a'[/{cyan}] to add some!",
]  # Message to show when there are no workspaces, it's a list of renderable and works just like DASHBOARD

WORKSPACE = {
    "editing": cyan,  # style/color for a focused item when editing
    "pointer": " ",  # A pointer to show the cursor position
    # Text to show if there are children's workspaces
    # You can use some vars for a hint
    # VARS
    # count: number of children inside the workspace
    # You can use this in 2 different ways
    # Example 1: This will indicate that the workspaces have additional child workspaces
    "children_hint": "+",
    # Example 2: This will indicate the presence of children along with a count
    "children_hint": "+{count}",
    "start_expanded": False,  # Develop Branch: On startup expand all workspaces with child workspaces
}

# NOTE: TODOS


COLUMN_ORDER = ["description", "due", "urgency"]  # order of columns for todo pane
TODO = {
    "color_todos": False,  # this will color the todos based on their status (overdue: red, pending: yellow, done: green)
    "editing": cyan,  # style/color for focused todo when not editing
    "pointer": " ",  # cursor pointer
    "due_icon": "󱫌 ",  # icon to use for due
    "effort_icon": "󰖵 ",  # icon to use for effort
    "effort_color": yellow,  # color to use for effort
    "recurrence_icon": " ⟲ ",  # icon to use for recurrence
    "recurrence_color": blue,  # color to use for recurrence
    "tags_color": red,  # color for tags
    "completed_icon": "✓ ",  # icon for completed todo
    "pending_icon": "● ",  # icon for pending todo
    "overdue_icon": "! ",  # icon for overdue todo
    "urgency1_icon": "",  # icon for urgency 1 (lowest)
    "urgency2_icon": "",  # icon for urgency 2
    "urgency3_icon": "",  # icon for urgency 3
    # Develop Branch: Change the color of each urgency
    "urgency1_color": "green",
    "urgency2_color": "yellow",
    "urgency3_color": "orange",
    "initial_urgency": 1,  # Develop Branch: Create new todos with this urgency
    # See workspace children hint for details
    # VARS
    # remaining: Todos remaining
    # done     : Todos done
    # total    : Total todos
    "children_hint": "({done}/{total})",
}

EMPTY_TODO = [
    "󰺝",
    "Wow so Empty!?",
    "Add some todos to get started!",
]  # Message to show when there are no todos. The list works just like dashboard's list
