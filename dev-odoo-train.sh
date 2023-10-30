#!/bin/sh

tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder/odoo && ./odoo-bin --addons-path="addons/,../enterprise/,../odoo-technical-training" -d charliebertrand -u estate  --dev xml" C-m
tmux split-window -h
tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder" C-m
tmux split-window -v
tmux send-keys "cd ~/code/Schwaips/drakkar/odoo_folder/odoo-technical-training" C-m
tmux select-pane -t 1
# tmux split-window -v
# tmux send-keys "cd ~/code/Schwaips/drakkar/Igere/file-server && yarn dev" C-m
# tmux split-window -v
# tmux send-keys "ngrok http 3000 --subdomain=ivan-charlie" C-m
# tmux resize-pane -t 3 -D 10
