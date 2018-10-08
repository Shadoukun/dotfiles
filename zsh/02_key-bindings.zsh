zmodload zsh/terminfo

if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
  function zle-line-init() {
    echoti smkx
  }
  function zle-line-finish() {
    echoti rmkx
  }
  zle -N zle-line-init
  zle -N zle-line-finish
fi


# delete key
bindkey $terminfo[kdch1] delete-char

# ctrl+left | ctrl+right
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
