#!/bin/sh

tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder/odoo && ./odoo-bin --addons-path="addons,../enterprise,../Vap-Ohm" -d vapohm2 -u pos_search_drakkar --dev xml" C-m
tmux split-window -h
tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder" C-m
tmux split-window -v
tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder/Vap-Ohm" C-m
tmux select-pane -t 1