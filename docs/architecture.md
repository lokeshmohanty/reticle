# Reticle — Architecture & Design System

Reticle is structured as a modular Zola theme supporting four layout modes, compiled SCSS design tokens, and client-side interactivity.

## Directory Structure

```
reticle/
├── theme.toml                  # Zola theme manifest & extra configuration schema
├── Justfile                    # Task runner (serve-docs, serve-blog, serve-book, build)
├── build.sh                    # Multi-example build script generating public/
├── default.nix / flake.nix     # Nix dev shell (Zola + Just environment)
├── tokens/                     # Standalone portable theme tokens
│   ├── reticle.css             # Standalone CSS custom properties
│   ├── reticle-dark.toml       # Portable dark palette definition
│   └── reticle-light.toml      # Portable light palette definition
├── sass/                       # SCSS source files
│   ├── style.scss              # Main stylesheet entrypoint
│   ├── tokens/                 # _colors.scss, _spacing.scss, _typography.scss
│   ├── base/                   # _fonts.scss, _reset.scss, _typography.scss
│   ├── components/             # _layout, _navigation, _sidebar, _theme-toggle, _buttons, _code, _search, _landing, _print, _tape, _chips
│   └── modes/                  # _blog, _product, _lokeshmohanty
├── static/                     # Static assets
│   ├── fonts/                  # Self-hosted variable woff2 fonts (Space Grotesk, Nunito, Cascadia Code)
│   ├── img/                    # reticle-logo.png, reticle-icon.png
│   └── js/                     # app.js, theme.js, navigation.js, code.js, search.js
├── templates/                  # Zola Tera templates
│   ├── base.html               # Head, meta, preloaded fonts, schema.org JSON-LD
│   ├── index.html              # Homepage mode router
│   ├── page.html / section.html # Content templates
│   └── partials/               # header, footer, sidebar, search, theme-toggle, nav-buttons
└── examples/                   # Embedded test sites (docs, book, blog)
```

## SCSS Token Hierarchy

1. **Tokens (`sass/tokens/`)**:
   - `_colors.scss`: Defines `:root` and `[data-theme="light"]` CSS custom properties (`--paper`, `--paper-2`, `--card`, `--ink`, `--ink-2`, `--ink-3`, `--rule`, `--rule-soft`, `--proved`, `--obligation`, `--blocking`).
   - `_typography.scss`: Modular font sizes (`--text-xs`..`--text-5xl`), font weights, line heights, tracking, and mixins (`@mixin h1`..`h6`, `@mixin body-text`, `@mixin label`).
   - `_spacing.scss`: Base 4px spacing scale (`--space-1`..`--space-24`) and container widths.
2. **Base (`sass/base/`)**:
   - `_fonts.scss`: `@font-face` declarations for self-hosted variable fonts.
   - `_reset.scss`: CSS reset, selection colors, scrollbar styling, focus rings.
   - `_typography.scss`: Element styling for `h1`..`h6`, `p`, `a`, `code`, `kbd`, `blockquote`, `table`.
3. **Components (`sass/components/`)**:
   - Component styles using CSS custom properties (`--paper`, `--ink`, `--obligation`, etc.).

## Multi-Mode Routing

Set `[extra] mode` in your `config.toml` to select the layout mode:
- `"docs"`: Collapsible & resizable sidebar, section navigation, version picker, inline TOC, search.
- `"book"`: Distraction-free reading, centered prose column, chapter drawer overlay, keyboard shortcuts.
- `"blog"`: Post listing cards, tag filters, RSS feeds, reading time estimates, hero header.
- `"product"`: Landing page hero, feature card grid, shell installation widget, call-to-action buttons.
