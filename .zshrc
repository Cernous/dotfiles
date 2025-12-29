# Source shell configuration files
for file in ~/.config/shell/*.sh; do
  source "$file"
done

# Command Replacements
alias cat='bat'
alias ls='eza --color=always --long --git --icons=always --no-time --no-user --no-permissions --tree --level=1 --sort=type'

# Run startup functions
ff
fetch_mpc_status
