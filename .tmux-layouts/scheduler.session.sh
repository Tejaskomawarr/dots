
# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.

session_root "~/workflow/merger/schduler-simple"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "real-beta"; then

  # Create a new window inline within session layout definition.
  new_window "nvim"
  run_cmd  "nvim"
  
  new_window "runner"
  split_h 51
  run_cmd "ls"
  split_v 50
  run_cmd "nix-shell -p redis "
  run_cmd "redis-server"

  # Load a defined window layout.

  # Select the default active window on session creation.

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
