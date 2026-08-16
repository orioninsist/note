#!/usr/bin/env bash

note_open() {
    local current_dir="$NOTES_DIR"
    local target
    local answer

    while true; do
        target="$(
            find "$current_dir" -mindepth 1 -maxdepth 1 | fzf --print-query \
                --preview "$NOTE_PREVIEW" \
                --preview-window "$NOTE_PREVIEW_WINDOW" \
                $NOTE_PREVIEW_BIND
        )" || return

        target="$(printf '%s\n' "$target" | tail -n 1)"

        if [ -d "$target" ]; then
            current_dir="$target"
            continue
        fi

        if [ ! -f "$target" ]; then
            read -r -p "File does not exist. Create it? [y/N]: " answer

            case "$answer" in
                y|Y)
                    touch "$target"
                    ;;
                *)
                    return
                    ;;
            esac
        fi

        nvim "$target"
        return
    done
}
