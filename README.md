# The Monospace Web

Monospace fonts are dear to many of us. Some find them more readable, consistent, and beautiful, than their proportional alternatives. Maybe we're just brainwashed from spending years in terminals? Or are we hopelessly nostalgic? I'm not sure. But I like them, and that's why I started experimenting with all-monospace Web.

https://owickstrom.github.io/the-monospace-web/

## Build

```
nix develop # or `direnv allow .`
make
```

## Multi-Page Markdown Support

The build system supports multiple markdown files with cross-references. All markdown files in `SRCDIR` are converted to HTML, with links automatically resolved.

### Configuration

- `SRCDIR`: Source markdown directory (default: `markdown_src`)
- `HTMLDIR`: Output directory for non-index HTML files (default: `pages`)

### File Output

- `$(SRCDIR)/index.md` -> `index.html` (at root)
- `$(SRCDIR)/**/*.md` (excluding index) -> `$(HTMLDIR)/**/*.html` (preserving subdirectories)

### Linking Between Pages

Use relative markdown links with `.md` extension:

```markdown
# Link to page in same directory
[Page Name](other-page.md)

# Link to page in subdirectory
[Subdirectory Page](subdir/page.md)

# Link to index from subdirectory
[Index](../index.md)

# Link to specific section
[Introduction](page.md#introduction)
```

The build system uses a Lua filter (`convert-links.lua`) to automatically convert `.md` -> `.html` in generated HTML, but only for files that exist within `SRCDIR`. Links to markdown files outside `SRCDIR` are preserved as `.md` links.

### Example Structure

```
markdown_src/
|-- index.md           # -> index.html
|-- guide.md           # -> pages/guide.html
|-- about.md           # -> pages/about.html
|-- topics/
|   |-- intro.md       # -> pages/topics/intro.html
|   |-- advanced.md    # -> pages/topics/advanced.md
```

### Custom Directories

```bash
make SRCDIR=content HTMLDIR=docs
```

## License

[MIT](LICENSE.md)
