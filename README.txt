#Change ls colours
LS_COLORS="ow=01;36;40" && export LS_COLORS

#make cd use the ls colours
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit


"""""""""""""""""""lloydstubber/my-wsl-setup""""""""""""""""""



?????????????? how do I hide the "user@hostname" info


+) open your .zshrc and pase this at the bottom:

	export USER=''
	prompt_context(){
		if[[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
			prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
		fi
	}


+) if don't want that too, just comment out this line:

		prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
