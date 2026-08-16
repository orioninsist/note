#!/usr/bin/env bash

note_search() {
    local result
    local file
    local line

    result="$(
        fzf --ansi \
            --phony \
            --bind 'start:reload:rg --line-number --color=always "" /mnt/local/resources/notes || true' \
            --bind 'change:reload:rg --line-number --color=always {q} /mnt/local/resources/notes || true' \
            --delimiter ':' \
            --preview 'bat --color=always --style=numbers --highlight-line {2} {1}' \
            --preview-window "$NOTE_PREVIEW_WINDOW" \
            $NOTE_PREVIEW_BIND
    )" || return

    file="${result%%:*}"
    line="${result#*:}"
    line="${line%%:*}"

    nvim "+$line" "$file"
}
