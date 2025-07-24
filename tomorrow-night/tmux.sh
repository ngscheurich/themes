#!/bin/bash
#
# Sets colors for my tmux statusline, then reloads it.
#

set -euo pipefail

SCRIPT="${XDS_DATA_HOME:-$HOME/.local/share}/grimoire/tmux_statusline.sh"

if [ -x "$SCRIPT" ]; then
  export TMUX_COLOR_MAIN_FG=colour7
  export TMUX_COLOR_MAIN_BG=#373b41

  export TMUX_COLOR_LEFT_FG=#1d1f21
  export TMUX_COLOR_LEFT_BG=colour2

  export TMUX_COLOR_ACTIVE_FG=colour7
  export TMUX_COLOR_ACTIVE_BG=#1d1f21

  export TMUX_COLOR_SEG_1_FG=colour7
  export TMUX_COLOR_SEG_1_BG=#2c2e2f

  export TMUX_COLOR_SEG_2_FG=#1d1f21
  export TMUX_COLOR_SEG_2_BG=colour7

  export TMUX_COLOR_SEG_3_FG=#1d1f21
  export TMUX_COLOR_SEG_3_BG=colour7

  "$SCRIPT"
else
  echo "📖 No viable script in sight... ($SCRIPT)"
  exit 1
fi
