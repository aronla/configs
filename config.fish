source ~/.fish_aliases
source ~/.fish_variables
if test -e ~/.fish_local_variables
  source ~/.fish_local_variables
else
  echo did not load local variables
end

set fish_key_bindings fish_user_key_bindings
