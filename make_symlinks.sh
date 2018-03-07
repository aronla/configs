#!/usr/bin/env bash
backup_dir=~/config_backups

if [ ! -d "$backup_dir" ]
then
    mkdir ~/config_backups
    echo made dir $backup_dir
else
    echo dir $backup_dir exists
fi


function move_to_backup {
    if [ -e "$1" ]
    then
        mv $1 $backup_dir
    fi
}

function create_symlink {
   if [ -L "$2" ]
   then
       echo symlink for $2 already exists
   else
       ln -s $1 $2
   fi
}

function create_directory {
   if [ -e "$1" ]
   then
       echo directory $1 already exists
   else
       mkdir $1
   fi
}

# fish
move_to_backup ~/.config/fish/config.fish
move_to_backup ~/.fish_aliases
move_to_backup ~/.fish_variables
move_to_backup ~/.fish_local_variables
create_directory ~/.config/fish/functions/
move_to_backup ~/.config/fish/functions/fish_user_key_bindings.fish

create_symlink ~/configs/config.fish ~/.config/fish/config.fish
create_symlink ~/configs/.fish_aliases ~/.fish_aliases
create_symlink ~/configs/.fish_variables ~/.fish_variables
create_symlink ~/configs/.fish_local_variables ~/.fish_local_variables
create_symlink ~/configs/fish_user_key_bindings.fish ~/.config/fish/functions/fish_user_key_bindings.fish

# spacemacs
move_to_backup ~/.spacemacs

create_symlink ~/configs/.spacemacs ~/.spacemacs

# tmux
move_to_backup ~/.tmux.conf

create_symlink ~/configs/.tmux.conf ~/.tmux.conf
