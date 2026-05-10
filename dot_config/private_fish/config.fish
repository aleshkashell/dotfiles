if status is-interactive
    # Commands to run in interactive sessions can go here
    bind ctrl-space accept-autosuggestion
    [ "$(command -v atuin)" ] && eval "$(atuin init fish)"
    [ "$(command -v fzf)" ] && eval "$(fzf --fish)"
    [ "$(command -v zoxide)" ] && eval "$(zoxide init fish)"
end
### bling.fish source start
test -f /usr/share/bazzite-cli/bling.fish && source /usr/share/bazzite-cli/bling.fish
### bling.fish source end

# Aliases

if type -q ug
    alias grep='ug'
    alias egrep='ug -E'
    alias fgrep='ug -F'
    alias xzgrep='ug -z'
    alias xzegrep='ug -zE'
    alias xzfgrep='ug -zF'
end

if type -q eza
    alias ll='eza -l --icons=auto --group-directories-first'
    alias l.='eza -d .*'
    alias ls='eza'
    alias l1='eza -1'
  end
