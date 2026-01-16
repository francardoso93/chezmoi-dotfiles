#!/bin/bash
set -euo pipefail

# Allow install scripts to bypass interactive check in .bashrc
export CHEZMOI_INSTALL_RUNNING=1

n() {
  npm install -g "$@"
}

n @github/copilot

