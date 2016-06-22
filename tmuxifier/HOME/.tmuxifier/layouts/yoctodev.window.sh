# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/Projects/UTX-3115/yocto-build-env/poky"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "yoctodev"

# Split window into panes.
split_v 15
select_pane 0
split_h 50
select_pane 1
split_v 30
select_pane 2

# Run commands.
#run_cmd "top"     # runs in active pane
#run_cmd "date" 1  # runs in pane 1
run_cmd "htop" 2
run_cmd "source oe-init-build-env" 1

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1

# Set active pane.
select_pane 0
