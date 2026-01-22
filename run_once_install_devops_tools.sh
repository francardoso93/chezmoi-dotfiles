#!/bin/bash
set -eo pipefail

# Allow install scripts to bypass interactive check in .bashrc
export CHEZMOI_INSTALL_RUNNING=1

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

install_kubectl_plugins() {
  mkdir -p "$HOME/.local/bin"
  ln -sf "/home/francisco/.local/share/mise/installs/krew/0.4.5/krew" "$HOME/.local/bin/kubectl-krew"
  export PATH="$HOME/.local/bin:$PATH"
  kubectl krew install stern
  kubectl krew install ctx
  kubectl krew install ns
  kubectl krew install ai
}

refresh_bash(){
  eval "$(mise activate bash)"
}

install_mise_global_packages
refresh_bash
install_go_tools
install_kubectl_plugins

# Granted - To easily assume different AWS IAM roles
curl -OL releases.commonfate.io/granted/v0.36.2/granted_0.36.2_linux_x86_64.tar.gz
sudo tar -zxvf ./granted_0.36.2_linux_x86_64.tar.gz -C /usr/local/bin/
