#!/bin/bash
#
# Sets colors for my tmux statusline, then reloads it.
#

set -euo pipefail

SCRIPT="${XDS_DATA_HOME:-$HOME/.local/share}/grimoire/tmux_statusline.sh"

if [ -x "$SCRIPT" ]; then
  export TMUX_COLOR_LEFT_FG=#f3f1e9
  export TMUX_COLOR_LEFT_BG=colour2

  export TMUX_COLOR_MAIN_FG=colour15
  export TMUX_COLOR_MAIN_BG=#d0d0ce

  export TMUX_COLOR_ACTIVE_FG=colour15
  export TMUX_COLOR_ACTIVE_BG=#f3f1e9

  export TMUX_COLOR_SEG_1_FG=colour15
  export TMUX_COLOR_SEG_1_BG=#d0d0ce

  export TMUX_COLOR_SEG_2_FG=colour7
  export TMUX_COLOR_SEG_2_BG=colour

  export TMUX_COLOR_SEG_3_FG=colour7
  export TMUX_COLOR_SEG_3_BG=colour8

  "$SCRIPT"
else
  echo "📖 No viable script in sight... ($SCRIPT)"
  exit 1
fi
