# brew bundle dump
alias brew-bundle-dump 'brew bundle dump --global --force --describe'

# Mole shell completion
set -l output (mole completion fish 2>/dev/null); and echo "$output" | source

# openclaw
alias openclaw-cliproxyapi-tunnel 'ssh -NL 8317:127.0.0.1:8317 node@openclaw-vm'
alias openclaw-tunnel 'ssh -NL 18789:127.0.0.1:18789 node@openclaw-vm'
