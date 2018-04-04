function fish_user_key_bindings
  fish_vi_key_bindings

  bind -M insert -m default fd backward-char force-repaint
  bind -M insert \cf forward-char
  bind -M insert \cg forward-word
end
