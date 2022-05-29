if type -q exa
  alias ls "exa -g --icons --classify"
  alias lsa "ls -a"
  alias ll "exa -l -g --icons --classify"
  alias lla "ll -a"
end

if type -q ghq
  alias ghqcd="cd \$(ghq list --full-path | fzf)"
end

if type -q docker

  # PHP in container
  alias dcomposer="docker run --rm --interactive --tty --volume \$PWD:/app --volume \$HOME/.composer:/tmp composer:latest composer"
  alias dphp="docker run --rm --interactive --tty --volume \$PWD:/app --volume /Users:/Users composer:latest php"
  alias dphp8="docker run --rm --interactive --tty --volume \$PWD:/app composer:latest php"
  alias dphp7="docker run --rm --interactive --tty --volume \$PWD:/app --workdir /app php:7.4-cli php"
  alias dlaravel="docker run --rm --interactive --tty --volume \$PWD:/app --volume \$HOME/.composer:/tmp composer:latest /tmp/vendor/bin/laravel"

end

if type -q thefuck
  thefuck --alias | source
end

