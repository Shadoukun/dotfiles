### Basic ###

setopt no_beep # No error beep
setopt interactive_comments # Allow interactive comments in shell
setopt pushd_ignore_dups # don't push duplicate directories to the directory stack


### Globbing ###
setopt extended_glob


### History ###
setopt append_history # Append commands from all sessions to the same command history
setopt extended_history # Append timestamps and duration
setopt inc_append_history # Add commands as they are typed, don't wait for exit
setopt hist_expire_dups_first # When trimming history, trim dupes first
setopt hist_ignore_dups # Don't write duplicate events
setopt hist_ignore_space # Ignore commands that start with space
setopt hist_find_no_dups # Don't include dups when searching
setopt hist_reduce_blanks # Remove redundant whitespace from commands
setopt hist_verify # don't execute, just exapnd history
setopt share_history # import new commands and appends typed commands to history


### Completion ###
setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word
#setopt auto_menu # show completion menu on successive tab press. ignored if menu_complete is set
setopt auto_name_dirs # Any parameter that is set to the absolute name of a directory becomes the name of that directory
setopt complete_in_word # Allow completion from within word/phrase

unsetopt menu_complete


### Correction ###
setopt correct # Correct spelling for commands
setopt correctall # Correct spelling for arguments


### Prompt ###
setopt prompt_subst # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt transient_rprompt # only show the rprompt on the current prompt


### Functions & Etc  ###
setopt multios # perform implicit tees or cats when multiple redirections are attempted

