#!/bin/bash
set -euo pipefail

OS="$(uname -s)"
case "${OS}" in
    Linux*)
        if [ -f /etc/arch-release ]; then
          yay -S slack-desktop --noconfirm
        fi
        ;;
    *)
esac

