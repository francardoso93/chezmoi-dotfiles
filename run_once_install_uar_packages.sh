#!/bin/bash
set -eo pipefail

# Allow install scripts to bypass interactive check in .bashrc
export CHEZMOI_INSTALL_RUNNING=1

OS="$(uname -s)"
case "${OS}" in
    Linux*)
        if [ -f /etc/arch-release ]; then
          yay -S slack-desktop --noconfirm
          yay -S awsvpnclient --noconfirm
          # Those steps are required by awsvpnclient to use DNS servers from VPN
          sudo systemctl --now enable systemd-resolved.service
          sudo systemctl --now enable awsvpnclient
          #
        fi
esac

