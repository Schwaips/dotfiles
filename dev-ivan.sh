#!/bin/sh

tmux send-keys "cd ~/code/Schwaips/drakkar/IvanSkybyk/ivan_skybyk_backend" C-m
tmux split-window -h
tmux send-keys "cd ~/code/Schwaips/drakkar/IvanSkybyk/ivan_skybyk_backend && rails s" C-m
tmux split-window -v
tmux send-keys "cd ~/code/Schwaips/drakkar/IvanSkybyk/ivan_skybyk" C-m
tmux select-pane -t 1
# tmux split-window -v
# tmux send-keys "cd ~/code/Schwaips/drakkar/Igere/file-server && yarn dev" C-m
tmux split-window -v
tmux send-keys "ngrok http 3000 --subdomain=ivan-charlie" C-m
# tmux resize-pane -t 3 -D 10
