source ~/.fish_aliases
source ~/.fish_variables
if test -e ~/.fish_local_variables
  source ~/.fish_local_variables
else
  echo did not load local variables
end

set fish_key_bindings fish_user_key_bindings

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aron/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/aron/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/aron/Downloads/google-cloud-sdk/path.fish.inc'; end; end
