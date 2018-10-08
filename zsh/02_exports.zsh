export LC_COLLATE=C
export PATH=$PATH~/bin:/usr/local/bin:/usr/local/sbin:~/bin
export PAGER=less

# set editor to nano if its installed.
if (( $+commands[nano] )); then
    EDITOR=nano
fi

    # Figure out the SHORT hostname
if [[ "$OSTYPE" = darwin* ]]; then
    # macOS's $HOST changes with dhcp, etc. Use ComputerName if possible.
    SHORT_HOST=$(scutil --get ComputerName 2>/dev/null) || SHORT_HOST=${HOST/.*/}
else
    SHORT_HOST=${HOST/.*/}
fi

