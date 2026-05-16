#!/bin/bash
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$DOTFILES/$1"
  local dst="$HOME/$1"
  mkdir -p "$(dirname "$dst")"
  ln -sf "$src" "$dst"
  echo "  $dst → $src"
}

echo "Installing dotfiles..."
link ".zshrc"
link ".config/starship.toml"
echo "Done."
