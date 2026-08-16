#!/usr/bin/env bash

note_stats() {
    local files
    local dirs
    local size
    local markdown

    files="$(find "$NOTES_DIR" -type f | wc -l)"
    dirs="$(find "$NOTES_DIR" -type d | wc -l)"
    size="$(du -sh "$NOTES_DIR" | awk '{print $1}')"
    markdown="$(find "$NOTES_DIR" -type f -name '*.md' | wc -l)"

    printf '%s\n' "Files: $files"
    printf '%s\n' "Directories: $dirs"
    printf '%s\n' "Size: $size"
    printf '%s\n' "Markdown: $markdown"
}
