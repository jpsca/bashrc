
# --- Cleanup ---
# Recursively delete `.DS_Store` files
alias cleanup_ds_store="find . -type f -name '*.DS_Store' -ls -delete"
# Delete all the python junk
alias cleanup_pyjunk="find . -name '*~' -or -name '*.egg-info' -or -name 'pip-wheel-metadata' -or -name '__pycache__' | xargs rm -vRf"
# Recursively delete all noise files
alias cleanup="cleanup_ds_store && cleanup_pyjunk"

# --- Docker ---
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dce="docker-compose exec"

# --- Git ---
alias gis="git status"
alias gia="git add --all ."
alias gsw="git switch"
alias gil="git pull"
alias gilf="git pull --ff-only"
alias gip="git push"
alias g1="git switch \$(git remote show origin | grep 'HEAD branch' | awk '{print \$3}')"

# --- Navigation ---
alias ..="cd .."
# List all files colorized in long format
alias lsl="pwd && ls -laGh"
# List all files colorized in long format
alias l="ls -lF ${colorflag}"
# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# --- Network ---
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"
# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"
# Print which process is listing upon a port
alias ports='netstat -tulpn'

# --- Python ---
alias on="source .venv/bin/activate"
alias off="deactivate"
alias pythonNG="/home/jpsca/.asdf/installs/python/nogil-3.9.10/bin/python"
alias mkenv14="python3.14 -m venv .venv && on && pip install -U pip wheel"
alias mkenv13="python3.13 -m venv .venv && on && pip install -U pip wheel"
alias mkenv12="python3.12 -m venv .venv && on && pip install -U pip wheel"
alias mkenv11="python3.11 -m venv .venv && on && pip install -U pip wheel"
alias mkenv10="python3.10 -m venv .venv && on && pip install -U pip wheel"
alias mkenv9="python3.9 -m venv .venv && on && pip install -U pip wheel"
alias mkenv8="python3.8 -m venv .venv && on && pip install -U pip wheel"
alias mkenv7="python3.7 -m venv .venv && on && pip install -U pip wheel"

# --- Rails ---
alias be="bundle exec"
alias fogo="foreman start -f Procfile.dev"
