# Stuff for eza

# Set eza as an ls replacement
if command -v eza > /dev/null 2>&1; then
    alias ls="eza --icons=always --color=always --group-directories-first -F=always --header --smart-group --mounts --octal-permissions --git --no-quotes"
    alias l="ls -al"
    alias lt="ls -T"
fi
