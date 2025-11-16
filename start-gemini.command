#!/usr/bin/env zsh

set -euo pipefail
IFS=$'\n\t'

# スクリプトファイルのディレクトリに移動
SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd -P)"
cd "$SCRIPT_DIR"

if ! command -v gemini >/dev/null 2>&1; then
  echo "Gemini CLI が見つかりません。PATH を確認してください。"
  read -sk1
  exit 1
fi

# Geminiを起動
exec /usr/bin/env gemini "$@"
