#!/bin/sh

MODULE_NAME=$1


function usage() {
  echo " ERR -- Veuillez spécifier le nom du module à updgrade pour odoo"
  echo "Exemple devodoovillaverde <my_module>"
  echo "Usage: $0 [MODULE_NAME]"
}

if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
  usage
  exit 0
fi

if [ -z "$MODULE_NAME" ]
then
  usage
  exit 1
fi


tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder/odoo && ./odoo-bin --addons-path="addons,../enterprise,../VillaVerde/Villaverde_Odoo" -d villaverde -u $MODULE_NAME --dev xml" C-m
tmux split-window -h
tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder" C-m
tmux split-window -v
tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder/VillaVerde/Villaverde_Odoo" C-m
tmux select-pane -t 1