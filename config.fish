source ~/.fish_aliases
source ~/.fish_variables

if test -e ~/.fish_local_variables
  source ~/.fish_local_variables
end

function fish_greeting
end

# ### bin
set PATH $HOME/bin $PATH

### jenv
set PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init -|psub)


# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

### pyenv
function activate_pyenv
  set -Ux PYENV_ROOT $HOME/.pyenv
  # set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths
  fish_add_path $PYENV_ROOT/bin
  if command -v pyenv 1>/dev/null 2>&1
      pyenv init - --no-rehash | source
  end
  status --is-interactive; and pyenv init --path | source
end

fish_add_path /usr/local/opt/node@19/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alagerberg/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/alagerberg/Downloads/google-cloud-sdk/path.fish.inc'; end
