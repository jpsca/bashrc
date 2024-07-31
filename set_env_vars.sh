export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.asdf/installs/rust/stable/bin:$PATH"

export EDITOR="code --wait"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"


# --- Python ---
# Disable the PIN for Werkzeug debugger
export WERKZEUG_DEBUG_PIN=off
export FLASK_ENV=development
export MYPYPATH=""
export PYTHONBREAKPOINT=ipdb.set_trace


# Linux
export AWS_VAULT_BACKEND=file
export GTK_USE_PORTAL=1
# Fix multithreading in macOS
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
