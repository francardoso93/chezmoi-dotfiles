#!/bin/bash
set -euo pipefail

install_ansible_on_arch_omarchy() {
  mise use --global pipx
  mise use --global ansible
}

OS="$(uname -s)"
case "${OS}" in
    Linux*)
        if [ -f /etc/arch-release ] && [ -d "$HOME/.local/share/omarchy" ]; then
            install_ansible_on_arch_omarchy
        else
            echo "Unsupported Linux distribution"
            exit 1
        fi
        ;;
    *)
        echo "Unsupported operating system: ${OS}"
        exit 1
        ;;
esac

if [ ! -f "${HOME}/.ssh/id_ed25519" ]; then
  ssh-keygen -t ed25519 -f "${HOME}/.ssh/id_ed25519" -N "" -q
  echo "ssh-keygen completed."
else
  echo "SSH key already exists, skipping ssh-keygen."
fi

curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
echo "atuin installed through recommended script"

ansible-playbook ~/.bootstrap/setup.yml --ask-become-pass
echo "Apps install through Ansible playbook completed."

