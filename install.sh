#!/usr/bin/env bash

set -e

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="$HOME/.local/bin"
COMPLETION_DIR="$HOME/.local/share/bash-completion/completions"

mkdir -p "$BIN_DIR"
mkdir -p "$COMPLETION_DIR"

chmod +x "$BASE_DIR/bin/note"

ln -sf "$BASE_DIR/bin/note" "$BIN_DIR/note"
ln -sf "$BASE_DIR/completions/note" "$COMPLETION_DIR/note"

printf '%s\n' "Installed:"
printf '%s\n' "$BIN_DIR/note"

printf '%s\n' "Run:"
printf '%s\n' "note --help"
