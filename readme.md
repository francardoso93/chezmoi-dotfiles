Reference: https://github.com/logandonley/dotfiles

# My Chezmoi Dotfiles

This repository contains my dotfiles managed with chezmoi. It lets me keep my development environment consistent across machines.

## Requirements

- Git
- Chezmoi installed (via package manager eg `mise use --global chezmoi`)

## Quick Start

Initialize chezmoi using this repo:

    chezmoi init --apply git@github.com:francardoso93/chezmoi-dotfiles.git


## Updating Your Dotfiles

If you make changes locally and want to save them:

    chezmoi add ~/.someconfig
    chezmoi diff
    chezmoi apply
    chezmoi git commit -m "Update config"
    chezmoi git push

To pull and apply updates on another machine:

    chezmoi update

## Directory Structure

- `dot_*` → regular dotfiles  
- `dot_config/*` → files under `~/.config`  
- `run_once_*` → scripts executed once on first apply  
- `run_*` → scripts executed on every apply

## Troubleshooting

    chezmoi diff
    chezmoi apply --verbose
    chezmoi doctor

## Secrets

Chezmoi supports encrypted secrets using gpg, age, or pass. Example:

    chezmoi secret add mytoken

## TODOs:
- Other distirbutions. I've started this for my Omarchy setup, but it can be reused on Ubuntu with small tweaks (eg: start by checking if MISE in installed, install it otherwise through ansible playbook)
