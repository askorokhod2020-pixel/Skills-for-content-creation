#!/usr/bin/env bash
# Установка скиллов в проект (по умолчанию ./.claude/skills) или глобально: ./install.sh --global
# Повторный запуск обновляет скиллы до текущей версии пака.
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
if [ "${1:-}" = "--global" ]; then DEST="$HOME/.claude/skills"; else DEST="${1:-$PWD}/.claude/skills"; fi
mkdir -p "$DEST"
for d in "$HERE"/skills/*/; do
  n="$(basename "$d")"; rm -rf "$DEST/$n"; cp -R "$d" "$DEST/$n"; echo "✓ $n"
done
echo "Установлено в $DEST"
