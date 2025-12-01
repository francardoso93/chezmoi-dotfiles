#!/bin/bash
set -euo pipefail

# Allows current shell to use the installed tools (eg: go, kubectl)
mise activate bash

muse() 
{
  mise use --global "$@"
}

install_mise_global_packages() {
  muse kubectl
  muse helm
  muse krew
  muse k9s
  muse kind
  muse go
  muse terraform
  muse pulumi
  muse aws
  muse github-cli
  muse argo
  muse argo-rollouts
  muse claude
  muse gemini
}

install_go_tools() {
  # gcc is already installed on omarchy
  go install -v github.com/go-delve/delve/cmd/dlv@latest
}

install_kubect_plugins() {
  mkdir -p "$HOME/.local/bin"
  ln -sf "/home/francisco/.local/share/mise/installs/krew/0.4.5/krew" "$HOME/.local/bin/kubectl-krew"
  export PATH="$HOME/.local/bin:$PATH"
  kubectl krew install stern
  kubectl krew install ctx
  kubectl krew install ns
  kubectl krew install ai
}

install_mise_global_packages
install_go_tools
install_kubect_plugins

