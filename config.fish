source ~/.fish_aliases
source ~/.fish_variables

if test -e ~/.fish_local_variables
  source ~/.fish_local_variables
else
  echo did not load local variables
end
    
set fish_key_bindings fish_user_key_bindings
   
# /usr/local/bin/fish
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and . (pyenv init -|psub)

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/aron/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/aron/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/aron/Downloads/google-cloud-sdk/path.fish.inc'; end; end
#   
#   if test "$TERM" = "dumb"
#       function fish_title; end
#   end
#   # emacs ansi-term support
#   if test -n "$EMACS"
#       set -x TERM eterm-color
#   end
#   
#   # this function may be required
#   function fish_title
#       true
#   end
