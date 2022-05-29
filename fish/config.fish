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

  # set default editor to nvim
  set -gx EDITOR nvim

  fzf_configure_bindings

  # starship prompt
  switch (uname)
    case Darwin
      if test -x /opt/homebrew/bin/starship;
        /opt/homebrew/bin/starship init fish | source
      end
    case Linux
    case '*'
  end

end

# set PATH and load os-specify config
switch (uname)
  case Darwin
    if test -x /opt/homebrew/bin/brew;
      eval "$(/opt/homebrew/bin/brew shellenv)"
      set -gx PATH ~/bin $PATH
      source (dirname (status --current-filename))/config-osx.fish
    end
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

