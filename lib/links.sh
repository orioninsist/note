#!/usr/bin/env bash

note_links() {
    local index_file="$BASE_DIR/storage/note-index.txt"

    [ -f "$index_file" ] || note_index

    cat "$index_file"
}
