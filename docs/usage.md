# Reticle — Usage & Configuration Guide

Guide to setting up and customizing the Reticle Zola theme for your site.

## Installation

Clone Reticle into your Zola site's `themes/` directory:

```bash
cd your-zola-site
git clone https://github.com/lokeshmohanty/reticle themes/reticle
```

Or add as a Git submodule:

```bash
git submodule add https://github.com/lokeshmohanty/reticle themes/reticle
```

## Theme Modes

Select your site mode in `config.toml`:

```toml
theme = "reticle"

[extra]
mode = "docs" # Options: "docs", "book", "blog", "product"
```

### 1. Documentation Mode (`mode = "docs"`)
- Resizable sidebar with persistent width in `localStorage`
- Section navigation with active page highlights
- Right-hand Table of Contents panel
- Version picker support:
  ```toml
  [extra.versions]
  current = "2.0.0"
  list = [
      { version = "2.0.0", url = "/", label = "latest" },
      { version = "1.0.0", url = "/v1/" }
  ]
  ```

### 2. Book Mode (`mode = "book"`)
- Distraction-free long-form reading experience
- Keyboard navigation (left/right arrow keys to flip chapters)
- Fullscreen TOC chapter overlay modal

### 3. Blog Mode (`mode = "blog"`)
- Card-based post listings with tag taxonomies
- Hero banner configuration:
  ```toml
  [extra.hero]
  title = "Engineering & Research"
  subtitle = "Notes on software systems and design"
  ```
- Reading time calculation and publish date formatting

### 4. Product Landing Page (`mode = "product"`)
- Full-width hero with installation code snippet widget
- Feature grid cards with Lucide icon integration
- Call-to-action buttons

## Search Configuration

Enable search in `config.toml`:

```toml
build_search_index = true

[search]
include_title = true
include_description = true
include_path = true
include_content = true
```

The search modal triggers via the `/` key or search button in header/sidebar.

## Local Development with Nix & Just

Reticle includes a Nix shell (`default.nix` / `flake.nix`) providing `zola` and `just`:

```bash
# Start Nix environment
nix develop

# Serve example sites
just serve-docs   # http://127.0.0.1:1111
just serve-book   # http://127.0.0.1:1112
just serve-blog   # http://127.0.0.1:1113

# Build all example sites into public/
just build
```
