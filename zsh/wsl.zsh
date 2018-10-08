
# Run Windows VS Code from wsl.
code () {
    [[ -n $1 ]] && command code $(wslpath -wa $1)
}

# Run VLC
vlc () {
    [[ -n $1 ]] && /c/Program\ Files/VideoLAN/VLC/vlc.exe "$(wslpath -wa $1)" >/dev/null 2>&1 &
}

# Spawn BurntToast desktop notification
toast () {
    [[ -n $1 ]] && powershell.exe -Command New-BurntToastNotification -Text $1
}