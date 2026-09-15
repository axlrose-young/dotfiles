#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# added configs
export EDITOR=vim

alias v='vim'
alias ll='ls -lah'
alias gs='git status'
alias x='startx'
alias ff='fastfetch'
alias c='clear'
alias pac='pacman --color=always'

eval "$(starship init bash)"
eval "$(zoxide init bash)"

# Yazi-wrapper to quit in cwd
yy(){
	local temp # These vars belong to this function
	local cwd

	temp=$(mktemp) # Makes a temp file in /tmp	
	if [[ ! -f "$temp" ]];then
		return 
	fi 

	yazi --cwd-file="${temp}" # Write cwd into that file

	read -r cwd < "$temp" 
	if [[ -z cwd  ]];then
		rm "$temp"
		return
	fi

	cd "$cwd"
	rm "$temp"
}

