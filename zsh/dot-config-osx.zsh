# EXA
[ -x /opt/homebrew/bin/exa ] && alias ll="exa -l -g --icons"

# PHP in container
[ -x /usr/local/bin/docker ] && alias composer="docker run --rm --interactive --tty --volume \$PWD:/app --volume \$HOME/.composer:/tmp composer:latest composer" 
[ -x /usr/local/bin/docker ] && alias php="docker run --rm --interactive --tty --volume \$PWD:/app --volume /Users:/Users composer:latest php" 
[ -x /usr/local/bin/docker ] && alias php8="docker run --rm --interactive --tty --volume \$PWD:/app composer:latest php" 
[ -x /usr/local/bin/docker ] && alias php7="docker run --rm --interactive --tty --volume \$PWD:/app --workdir /app php:7.4-cli php" 
[ -x /usr/local/bin/docker ] && alias laravel="docker run --rm --interactive --tty --volume \$PWD:/app --volume \$HOME/.composer:/tmp composer:latest /tmp/vendor/bin/laravel" 
