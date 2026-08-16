#!/usr/bin/env bash

note_help() {
    cat <<'HELP'
Usage:
  note [file] [option]

Commands:
  open              Open notes file browser
  delete            Delete notes with confirmation
  search            Search inside notes
  statistics        Show note statistics
  glow              Open glow note viewer

File usage:
  note FILE         Open or create file with neovim
  note FILE -h      Open or create file with helix

Examples:
  note
  note project.md
  note project.md -h
  note open
  note search
  note statistics
  note glow
HELP
}
