mkdir ~/config_backups

# fish
mv ~/.config/fish/config.fish ~/config_backups
mv ~/.fish_aliases ~/config_backups
mv ~/.fish_variables ~/config_backups
mv ~/.config/fish/functions/fish_user_key_bindings.fish ~/config_backup

ln -s ~/configs/config.fish ~/.config/fish/config.fish
ln -s ~/configs/.fish_aliases ~/.fish_aliases
ln -s ~/configs/.fish_variables ~/.fish_variables
ln -s ~/configs/fish_user_key_bindings.fish ~/.config/fish/functions/fish_user_key_bindings.fish 

# spacemacs
mv ~/.spacemacs ~/config_backups

ln -s ~/configs/.spacemacs ~/.spacemacs

# tmux
mv ~/.tmux.conf ~/config_backups

ln -s ~/configs/.tmux.conf .tmux.conf
