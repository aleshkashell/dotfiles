if status is-interactive
    # Commands to run in interactive sessions can go here
    bind ctrl-space accept-autosuggestion
    [ "$(command -v atuin)" ] && eval "$(atuin init fish)"
    [ "$(command -v zoxide)" ] && eval "$(zoxide init fish)"
end
### bling.fish source start
test -f /usr/share/bazzite-cli/bling.fish && source /usr/share/bazzite-cli/bling.fish
### bling.fish source end
