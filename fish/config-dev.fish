if type -q docker

    # PHP in container
    alias dcomposer="docker run --rm --interactive --tty --volume \$PWD:/app --volume \$HOME/.composer:/tmp composer:latest composer"
    alias dphp="docker run --rm --interactive --tty --volume \$PWD:/app --volume /Users:/Users composer:latest php"
    alias dphp8="docker run --rm --interactive --tty --volume \$PWD:/app composer:latest php"
    alias dphp7="docker run --rm --interactive --tty --volume \$PWD:/app --workdir /app php:7.4-cli php"
    alias dlaravel="docker run --rm --interactive --tty --volume \$PWD:/app --volume \$HOME/.composer:/tmp composer:latest /tmp/vendor/bin/laravel"

    # azure-cli
    #  alias az="docker run --rm --name azure-cli -v \$HOME/.azure/config:/.azure/config bitnami/azure-cli:latest"

    #  alias aws="docker run --rm --name aws-cli -v \$HOME/.aws/config:/.aws/config bitnami/aws-cli:latest"
end
