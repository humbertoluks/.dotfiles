export ZSH="/home/me/.oh-my-zsh"
export PATH="$PATH:/usr/local/bin"
# export PATH="$PATH:`yarn global bin`"

# Prompt
ZSH_THEME="spaceship"

# powerlevel
POWERLEVEL9K_FOLDER_ICON=
POWERLEVEL9K_VCS_UNTRACKED_ICON=●
POWERLEVEL9K_VCS_UNSTAGED_ICON=±
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=↓
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=↑
POWERLEVEL9K_VCS_COMMIT_ICON=' '
POWERLEVEL9K_CUSTOM_OS_ICON="echo   $(whoami) "

# spaceship
## SPACESHIP_CHAR_PREFIX='\ufbdf '
## SPACESHIP_CHAR_PREFIX_COLOR='yellow'
## SPACESHIP_CHAR_SUFFIX=(" ")
## SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
## SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
## SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
## SPACESHIP_VENV_COLOR="magenta"
## SPACESHIP_VENV_PREFIX="("
## SPACESHIP_VENV_SYMBOL='\uf985'
## SPACESHIP_DOCKER_SYMBOL='\ue7b0'
## SPACESHIP_DOCKER_VERBOSE='false'
## SPACESHIP_BATTERY_SHOW='always'
## SPACESHIP_BATTERY_SYMBOL_DISCHARGING='\uf57d'
## SPACESHIP_BATTERY_SYMBOL_FULL='\uf583'
## SPACESHIP_BATTERY_SYMBOL_CHARGING='\uf588'

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

SPACESHIP_USER_SHOW=always
SPACESHIP_USER_COLOR=cyan

# Show Path
alias path='echo -e ${PATH//:/\\n}'


# plugins 
plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-completions git yarn-completion zsh-nvm)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# aliases
alias zshconfig="gedit ~/.zshrc"
alias open="explorer.exe"
alias xclip='xclip -selection c'
alias hc="history -c"
alias x="exit"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias apt='apt --color=auto'
# alias ls="lsd"

# replace commands
command -v vim &> /dev/null && alias vi='vim'
command -v lsd &> /dev/null && alias ls='lsd --group-dirs first'
command -v colorls &> /dev/null && alias ls='colorls --sd --gs'
command -v htop &> /dev/null && alias top='htop'
command -v gotop &> /dev/null && alias top='gotop -p'
command -v ytop &> /dev/null && alias top='ytop -p'

# MISC
## export VISUAL=vim
## export EDITOR=$VISUAL

## enable terminal linewrap
setterm -linewrap on

## colorize man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export LESSHISTFILE=-


# zsh settings
## options 
unsetopt NO_BEEP
unsetopt NO_MATCH
setopt AUTO_CD
setopt BEEP
setopt NOMATCH
setopt NOTIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt HIST_BEEP
setopt INTERACTIVE_COMMENTS
setopt MAGIC_EQUAL_SUBST
setopt NULL_GLOB

HISTFILE="$HOME/.cache/zsh_history"
HIST_STAMPS=mm/dd/yyyy
DISABLE_UPDATE_PROMPT=true
HISTSIZE=5000
SAVEHIST=5000
ZLE_RPROMPT_INDENT=0

# keys
bindkey '^[[2~' overwrite-mode
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[3;5~' kill-word
bindkey '^[[5~' beginning-of-buffer-or-history
bindkey '^[[6~' end-of-buffer-or-history

# functions
find() {
	if [ $# = 1 ];
	then
		command find . -iname "*$@*"
	else
		command find "$@"
	fi
}

# autorun
neofetch

