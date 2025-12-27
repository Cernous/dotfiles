# Fastfetch with wallpaper
wallp=$(qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.wallpaper 0 | grep 'Image: file:///home' | cut -c 15- | sed 's/[[:space:]]/\\&/g')
alias ff='fastfetch -l "$wallp"'

# ZSH Configuration
alias zc="$EDITOR $HOME/.zshrc"
alias zr="clear; source $HOME/.zshrc"

# Fun Aliases
alias matrix="tmatrix -c default -C cyan"
alias hostname="cat /etc/hostname"

# Pacman Maintenance
alias pacdate="sudo reflector --verbose --latest 10 --sort rate --save /etc/pacman.d/mirrorlist --protocol https --country Canada; sudo pacman -Syu; sudo pacman -Qtdq | sudo pacman -Rns -; sudo pacman -Scc"
alias pacsearch="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"

# Application Aliases
alias vendate='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'

# Docker Applications
alias llamacpp-vul="docker-compose --project-directory ~/Applications/Docker/llama-cpp-server"
