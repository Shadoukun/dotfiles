# ---ENV-------------------------------------------------------------------------------------------

# History
HISTSIZE=10000
SAVEHIST=9000
HISTFILE=~/.zsh_history

COMPLETION_WAITING_DOTS=true
HYPHEN_INSENSITIVE=true

ZSH_TMUX_AUTOSTART=true

# WSL doesnt set $SHELL correctly.
if [[ $(uname -r) =~ Microsoft$ ]]; then
    SHELL=$(which zsh)
fi

# ---ZPLUGIN---------------------------------------------------------------------------------------

# install zplugin if it's missing.
if [ ! -f $HOME/.zplugin/bin/zplugin.zsh ]; then
  echo "zplugin not installed."
  echo "Installing..."
  mkdir $HOME/.zplugin && git clone https://github.com/zdharma/zplugin.git $HOME/.zplugin/bin
fi

source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin


# Oh-My-ZSH plugins
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_ed25519 id_rsa

zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin snippet OMZ::plugins/virtualenv/virtualenv.plugin.zsh
zplugin snippet OMZ::plugins/ssh-agent/ssh-agent.plugin.zsh
zplugin ice svn silent; zplugin snippet OMZ::plugins/tmux

# local snippets
for f in $HOME/.zsh/*_*.zsh; do
    zplugin snippet "$f"
done
zplugin snippet $HOME/.zsh/wsl.zsh

# load theme
zplugin snippet $HOME/.zsh/shuro-theme.zsh-theme

# fzf
(( $+commands[fzf] )) && {
    zplugin ice silent wait"0"
    zplugin snippet $HOME/.zsh/fzf.zsh
    zplugin snippet 'https://raw.githubusercontent.com/junegunn/fzf/master/shell/completion.zsh'
    zplugin snippet 'https://raw.githubusercontent.com/junegunn/fzf/master/shell/key-bindings.zsh'
}

# LS_COLORS
zplugin ice atclone"dircolors -b LS_COLORS > c.zsh" atpull'%atclone' pick"c.zsh"
zplugin light trapd00r/LS_COLORS

# zsh-completions
zplugin ice wait"0" blockf lucid
zplugin light zsh-users/zsh-completions

# fast-syntax-highlighting
zplugin ice wait"0" atinit'zpcompinit; zpcdreplay' lucid
zplugin light zdharma/fast-syntax-highlighting

# zsh-history-substring-search
zplugin light zsh-users/zsh-history-substring-search && {
    bindkey "$terminfo[kcuu1]" history-substring-search-up
    bindkey "$terminfo[kcud1]" history-substring-search-down
}