#!/usr/bin/env bash

set -e

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="$HOME/.local/bin"

mkdir -p "$BIN_DIR"

chmod +x "$BASE_DIR/bin/note"

ln -sf "$BASE_DIR/bin/note" "$BIN_DIR/note"

printf '%s\n' "Installed:"
printf '%s\n' "$BIN_DIR/note"

printf '%s\n' "Run:"
printf '%s\n' "note --help"
