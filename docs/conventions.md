# Conventions

## Directory Layout

Achievement scripts are stored by platform:

```text
scripts/<platform>/<game>.rascript
```

Rich Presence files use the same platform grouping:

```text
rich-presence/<platform>/<game>.txt
```

## Naming

- Use RetroAchievements-style platform abbreviations, such as `NDS`, `GBA`, `PS1`, and `PSP`.
- Use the readable game title for filenames.
- Main sets use `<Game Name>.rascript`.
- Subsets use `<Game Name> [Subset - <Subset Name>].rascript`.
- Rich Presence files use `<Game Name>.txt`.

## Local Files

Reference repositories, emulator saves, save states, backups, and temporary research files should stay local and ignored unless they are intentionally added as public documentation.

