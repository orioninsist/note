#!/usr/bin/env bash

note_edit() {
    local file="$1"
    local editor="$2"

    [ -n "$file" ] || return 1

    local path="$NOTES_DIR/$file"

    mkdir -p "$(dirname "$path")"

    [ -f "$path" ] || touch "$path"

    if [ "$editor" = "helix" ]; then
        helix "$path"
    else
        nvim "$path"
    fi
}
