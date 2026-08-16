#!/usr/bin/env bash

note_index() {
    local index_file="$BASE_DIR/storage/note-index.txt"

    mkdir -p "$(dirname "$index_file")"

    find "$NOTES_DIR" -mindepth 1 -printf "%P\n" | sort > "$index_file"

    printf '%s\n' "Index created:"
    printf '%s\n' "$index_file"
}
