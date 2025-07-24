#!/bin/bash
#
# Usage: init.sh
#
# Clones the themes repo to a useful spot.
#

set -euo pipefail

REPO="git@github.com:ngscheurich/themes.git"
DEST="${XDG_DATA_HOME:-$HOME/.local/share}/themes"

if [ -d "$DEST" ]; then
  echo "🤷 No reason to do anything..."
else
  git clone "$REPO" "$DEST"
fi
