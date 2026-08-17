# Note

A simple, fast, terminal-based note manager for Linux users.

`note` is designed to manage Markdown notes directly from the terminal with a clean workflow:
create notes, search content, browse files, rename notes, and connect notes together using Markdown links.

The goal is to keep note management simple, local, and keyboard-driven.

## Features

- Terminal-based note management
- Markdown-first workflow
- Neovim integration
- Helix editor support
- File browser with preview
- Search inside notes
- Rename notes with confirmation
- Note statistics
- Markdown link completion
- Automatic note index generation
- Fast fuzzy workflow using terminal tools

## Installation

Clone the repository:

```bash
git clone <repository-url>
cd note
````

Run the installer:

```bash
./install.sh
```

After installation:

```bash
note --help
```

The installer creates:

```text
~/.local/bin/note
```

## Requirements

* Bash
* Neovim
* Helix (optional)
* bat
* fzf
* Standard Linux utilities

## Usage

### Show help

```bash
note --help
```

### Open note browser

```bash
note open
```

Browse your notes, preview files, and open them in your editor.

### Create or open a note

Open with Neovim:

```bash
note example.md
```

Open with Helix:

```bash
note example.md -h
```

## Commands

### Search notes

```bash
note search
```

Search inside note contents.

### Delete notes

```bash
note delete
```

Delete notes with confirmation.

### Rename notes

```bash
note rename
```

Rename note files safely with confirmation.

### Statistics

```bash
note statistics
```

Example:

```text
Files: 181
Directories: 2
Size: 1.3M
Markdown: 168
```

### Glow viewer

```bash
note glow
```

Open Markdown notes using Glow.

## Markdown Link Completion

`note` provides Markdown note linking support inside Neovim.

Example:

```md
[Project](abc
```

While typing:

* matching notes are filtered automatically
* navigate with arrow keys
* press `Tab` to accept the selected note

Result:

```md
[Project](abc.md)
```

This allows fast linking between local notes.

## Index System

Create a note index:

```bash
note index
```

The index is stored locally:

```text
storage/note-index.txt
```

View available note links:

```bash
note links
```

## Project Structure

```text
note/
├── bin/
│   └── note
├── config/
│   └── note.conf
├── lib/
│   ├── open.sh
│   ├── search.sh
│   ├── editor.sh
│   ├── delete.sh
│   ├── rename.sh
│   ├── index.sh
│   └── links.sh
├── storage/
│   └── note-index.txt
└── install.sh
```

## Design Goals

The project focuses on:

* simplicity
* local-first storage
* terminal efficiency
* modular Bash architecture
* fast keyboard workflows

No database is required.
Notes remain plain files that can be edited anywhere.


### Feature addition

Add under `## Features`:

```md
- Create or open files with any extension
- Bash/Flyline-compatible file completion
```

### Usage addition

Replace the current `### Create or open a note` section with:

````md
### Create or open a file

Open an existing file or create a new one with Neovim:

```bash
note example.md
note document.typst
note script.py
note config.toml
````

The filename and extension are preserved exactly. If the file does not exist, `note` creates it automatically before opening it.

Open or create the file with Helix:

```bash
note document.typst -h
```

File completion suggests existing files while still allowing new filenames to be created.





## License

MIT License

