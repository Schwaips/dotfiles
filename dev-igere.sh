#!/bin/sh

tmux send-keys "cd ~/code/Schwaips/drakkar/Igere/backend && yarn develop" C-m
tmux split-window -h
tmux send-keys "cd ~/code/Schwaips/drakkar/Igere/dashboard && yarn dev -p 3001" C-m
tmux split-window -v
tmux send-keys "cd ~/code/Schwaips/drakkar/Igere/copro && yarn dev" C-m
tmux select-pane -t 1
tmux split-window -v
tmux send-keys "cd ~/code/Schwaips/drakkar/Igere/file-server && yarn dev" C-m
tmux split-window -v
tmux send-keys "ngrok http 4000 --subdomain=igere-charlie" C-m
tmux resize-pane -t 3 -D 10
