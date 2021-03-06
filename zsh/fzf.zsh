zle -N fzf-completion

# set fzf color-scheme. Alternate Solarized Dark Theme
function() {
  [[ $+commands[fzf] ]] && {
    local base03="234"
    local base02="235"
    local base01="240"
    local base00="241"
    local base0="244"
    local base1="245"
    local base2="254"
    local base3="230"
    local yellow="136"
    local orange="166"
    local red="160"
    local magenta="125"
    local violet="61"
    local blue="33"
    local cyan="37"
    local green="64"

    export FZF_DEFAULT_OPTS="
        --color fg:-1,bg:-1,hl:$blue,fg+:$base2,bg+:$base02,hl+:$blue
        --color info:$yellow,prompt:$yellow,pointer:$base3,marker:$base3,spinner:$yellow
    "
  }
}

bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion
