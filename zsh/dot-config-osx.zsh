# Add HomeBrew PATH
export PATH=/opt/homebrew/bin:$PATH

# EXA
[ -x /opt/homebrew/bin/exa ] && alias ll="exa -l -g --icons"

# PHP
export PATH="/opt/homebrew/opt/php/bin:$PATH"
export PATH="/opt/homebrew/opt/php/sbin:$PATH"

