mkdir ~/config_backups

# fish
mv ~/.config/fish/config.fish ~/config_backups
mv ~/.fish_aliases ~/config_backups
mv ~/.fish_variables ~/config_backups

ln -s ~/configs/config.fish ~/.config/fish/config.fish
ln -s ~/configs/.fish_aliases ~/.fish_aliases
ln -s ~/configs/.fish_variables ~/.fish_variables

# spacemacs
mv ~/.spacemacs ~/config_backups

ln -s ~/configs/.spacemacs ~/.spacemacs

# tmux
mv ~/.tmux.conf ~/config_backups

ln -s ~/configs/.tmux.conf .tmux.conf
