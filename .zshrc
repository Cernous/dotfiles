# Source shell configuration files
for file in ~/.config/shell/*.sh; do
  source "$file"
done

# Run startup functions
ff
fetch_mpc_status