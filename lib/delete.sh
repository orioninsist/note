#!/usr/bin/env bash

note_delete() {
    local selected

    selected="$(find "$NOTES_DIR" -type f | fzf -m --preview "$NOTE_PREVIEW" --preview-window "$NOTE_PREVIEW_WINDOW" $NOTE_PREVIEW_BIND)" || return

    printf '%s\n' "Selected files:"
    printf '%s\n' "$selected"

    read -r -p "Delete selected files? [y/N]: " answer

    case "$answer" in
        y|Y)
            while IFS= read -r file; do
                rm -f "$file"
            done <<< "$selected"
            ;;
        *)
            printf '%s\n' "Cancelled."
            ;;
    esac
}
