#!/bin/bash
set -euo pipefail

n() {
  npm install -g "$@"
}

n @github/copilot
