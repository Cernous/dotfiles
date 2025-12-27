# FZF Configuration
export FZF_DEFAULT_OPTS=" \
						--height 40% \
						--layout=reverse \
						--border \
						--color=fg:#fdf0ed,header:#ec6a88,info:#e95678,pointer:#fdf0ed \
						--color=marker:#e95678,fg+:#fdf0ed,prompt:#3fdaa4,hl+:#ec6a88 \
						--color=selected-bg:#232530 \
						--multi"

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# FZF Completion Function
_fzf_comprun() {
	local show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"
	local command=$1
	shift

	case "$command" in
		cd) 			fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
		export|unset)	fzf --preview "eval 'echo $'{}"		 	"$@" ;;
		ssh)			fzf --preview 'dig {}'					 "$@" ;;		
		*)				fzf --preview "$show_file_or_dir_preview" "$@" ;;
	esac	
}
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
