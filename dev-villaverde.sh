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


tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder/odoo && ./odoo-bin --addons-path="addons,../enterprise,../VillaVerde/Villaverde_Odoo,../VillaVerde/kzm_odoo,../OCA/account-financial-tools,../OCA/brand,../OCA/partner-contact,../OCA/queue,../OCA/reporting-engine,../OCA/server-tools,../OCA/server-ux,../OCA/web" -d villaverde -u $MODULE_NAME --dev xml" C-m
tmux split-window -h
tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder" C-m
tmux split-window -v
tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder/VillaVerde/Villaverde_Odoo" C-m
tmux select-pane -t 1