alias ..="cd .."

# List all files colorized in long format
alias lsl="pwd && ls -laGh"
# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'
