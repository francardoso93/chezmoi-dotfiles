#!/bin/bash
# Enable atuin daemon for automatic shell history sync

if command -v atuin &> /dev/null; then
  systemctl --user daemon-reload
  systemctl --user enable --now atuin-daemon
fi
