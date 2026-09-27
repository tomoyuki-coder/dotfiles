#!/bin/sh
# Dev Containers の dotfiles 機能からコンテナ作成時に実行される
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Claude Code のユーザー共通設定（シンボリックリンクなので編集はこのリポジトリに反映される）
mkdir -p "$HOME/.claude"
ln -sf "$DOTFILES_DIR/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"

# rtk（未インストール時のみ）
if ! command -v rtk >/dev/null 2>&1 && [ ! -x "$HOME/.local/bin/rtk" ]; then
  curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh
fi
