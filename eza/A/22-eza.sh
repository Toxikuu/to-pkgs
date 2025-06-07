# Stuff for eza

# Set eza as an ls replacement
if command -v eza > /dev/null 2>&1; then
    alias ls="eza --icons=always --color=always --group-directories-first -F=always --header --smart-group --mounts --octal-permissions --git --no-quotes"
    alias lt="ls -T"
    alias lT="ls -l --total-size" # this can be very slow depending where it's run
fi
