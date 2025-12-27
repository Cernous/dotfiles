# MPC Status Function
function fetch_mpc_status() {
    if mpc status | grep -q 'playing'; then
        echo "\t\t\t\t\t\t Now Playing: $(mpc current)\n"
    fi
}
