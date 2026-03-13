if type -q eza
    alias ls "eza -g --icons --classify --group-directories-first"
    alias lsa "ls -a"
    alias ll "ls -l"
    alias lla "ll -a"
    alias llg "ll --git"
end

if type -q nvim
    alias vi nvim
    alias vim nvim
end

# openclaw
alias openclaw-cliproxyapi-tunnel 'ssh -NL 8317:127.0.0.1:8317 node@openclaw-vm'
alias openclaw-tunnel 'ssh -NL 18789:127.0.0.1:18789 node@openclaw-vm'
