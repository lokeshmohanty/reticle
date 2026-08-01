# Reticle — Documentation

*Last updated: 2026-08-02 (Reticle Revamp)*

Welcome to the **Reticle** documentation. Reticle is an opinionated Zola theme built around the **instrument-reading design system**: blueprint-paper ground (`--paper`), petrol ink (`--ink`), semantic state accents (`--proved`, `--obligation`, `--blocking`), three role-based typography families, and the signature **margin tape** rail element.

## Table of Contents

- [Architecture & Design System](architecture.md) — Directory layout, SCSS compilation, typography roles, and palette tokens
- [Design Tokens Reference](tokens.md) — Portable CSS (`reticle.css`), TOML definitions (`reticle-dark.toml`, `reticle-light.toml`), and semantic usage rules
- [Usage & Configuration Guide](usage.md) — Site modes (`docs`, `book`, `blog`, `product`), versioning, search setup, and local development with Nix

## Key Principles

1. **Three Type Roles**:
   - `Display` (**Space Grotesk**): Headings, titles, wordmarks, post titles.
   - `Running Text` (**Nunito**): Body copy, prose, list items, descriptions.
   - `Utility Voice` (**Cascadia Code**): Eyebrows, dates, counts, tags, run IDs, metrics, inline code, code blocks.
2. **Role-Based Token Naming**: Tokens are named semantically by function (`--font-display`, `--font-body`, `--font-mono`, `--ink-2`, `--proved`), never by color hue or classification.
3. **Semantic Accents**:
   - `--proved` (Teal): confirmed, cleared, done.
   - `--obligation` (Violet): owed, pending, UI interaction accent & focus rings.
   - `--blocking` (Red): destructive, blocking action (used sparingly).
4. **Signature Margin Tape**: A 3px left border (`.tape`) whose color signals the state of the content beside it.
