#!/usr/bin/env bash

set -euo pipefail

echo "Delete gitconfig"
rm -rf ~/.gitconfig

echo "Configure Git user"
git config --global user.email "bruno.gutierrez96@gmail.com"
git config --global user.name "Vagoasdf"

echo "Configure Git to use SSH instead of HTTP"
git config --global url.git@github.com:.insteadOf git://github.com/
