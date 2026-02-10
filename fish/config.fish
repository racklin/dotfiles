if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting ""
    set -gx TERM xterm-256color

    # theme
    set -g theme_color_scheme dracula
    set -g fish_prompt_pwd_dir_length 1
    set -g theme_display_user yes
    set -g theme_hide_hostname no
    set -g theme_hostname always

    # starship prompt
    switch (uname)
        case Darwin
            if test -x /opt/homebrew/bin/starship
                /opt/homebrew/bin/starship init fish | source
            end
        case Linux
        case '*'
    end

end

# include devenv
source (dirname (status --current-filename))/config-dev.fish

# set PATH and load os-specify config
switch (uname)
    case Darwin
        if test -x /opt/homebrew/bin/brew
            eval "$(/opt/homebrew/bin/brew shellenv)"
            set -gx PATH ~/bin $PATH
            source (dirname (status --current-filename))/config-osx.fish
        end
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end

# using less instead of more
export LESS='-R'
alias more='less'

# set default editor to nvim
set -gx EDITOR nvim

fzf_configure_bindings

# ghq functions
if type -q ghq
    alias ghqcd="cd \$(ghq list --full-path | fzf)"
end

if type -q thefuck
    thefuck --alias | source
end


# init zoxide
if type -q zoxide
    zoxide init fish | source
end

# init yazi
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
