function man () {
env \
	LESS_TERMCAP_mb=$'\E[1;31m'		`# begin bold` \
	LESS_TERMCAP_md=$'\E[1;38;5;112m'	`# begin blink` \
	LESS_TERMCAP_me=$'\E[0m'		`# reset bold/blink` \
	LESS_TERMCAP_so=$'\E[1;44;33m'		`# begin reverse video` \
	LESS_TERMCAP_se=$'\E[0m'		`# reset reverse video` \
	LESS_TERMCAP_us=$'\E[1;31m'		`# begin underline` \
	LESS_TERMCAP_ue=$'\E[0m'		`# reset underline` \
	man "$@"
}
