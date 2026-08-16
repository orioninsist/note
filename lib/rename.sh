#!/usr/bin/env bash

note_rename() {
    local file
    local new_name
    local dir
    local target
    local answer

    file="$(find "$NOTES_DIR" -type f | fzf)" || return

    dir="$(dirname "$file")"

    read -r -p "New name: " new_name

    [ -n "$new_name" ] || return

    target="$dir/$new_name"

    printf '%s\n' "Current:"
    printf '%s\n' "$file"
    printf '%s\n' "New:"
    printf '%s\n' "$target"

    read -r -p "Rename? [y/N]: " answer

    case "$answer" in
        y|Y)
            mv "$file" "$target"
            ;;
        *)
            printf '%s\n' "Cancelled."
            ;;
    esac
}
