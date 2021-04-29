source ~/.fish_aliases
source ~/.fish_variables

if test -e ~/.fish_local_variables
  source ~/.fish_local_variables
end

set fish_key_bindings fish_user_key_bindings

set fish_greeting

### pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
status --is-interactive; and source (pyenv init -|psub)

### bin
set PATH $HOME/bin $PATH

### jenv
set PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init -|psub)


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

