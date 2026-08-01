# Reticle — Design Tokens Reference

Reticle's visual language is built around **instrument reading**: blueprint-paper ground (`--paper`), petrol ink (`--ink`), and three semantic accents that carry meaning rather than decoration.

## Semantic Token Reference

### Surfaces (Paper Stack)

| Token | Dark (`:root`) | Light (`[data-theme="light"]`) | Usage |
|---|---|---|---|
| `--paper` | `#0c151a` | `#e7ecef` | Base canvas ground |
| `--paper-2` | `#111d24` | `#f6f9fa` | Sidebar, panels, headers, code blocks |
| `--card` | `#14222a` | `#fdfefe` | Lifted cards, floating overlays, modals |

### Inks (Text Weights)

| Token | Dark | Light | Usage |
|---|---|---|---|
| `--ink` | `#e6eef1` | `#0d1a22` | Primary body text, headings |
| `--ink-2` | `#9fb2bb` | `#4a5c65` | Secondary text, subtitles, descriptions |
| `--ink-3` | `#708590` | `#7c8d95` | Muted labels, dates, counts, furniture |

### Rules (Dividers)

| Token | Dark | Light | Usage |
|---|---|---|---|
| `--rule` | `#2a3d47` | `#c2d0d7` | Primary structural borders & rules |
| `--rule-soft` | `#1e2e37` | `#d8e2e7` | Soft section dividers, grouping lines |

### Semantic State Accents

| Token | Meaning | Dark | Light |
|---|---|---|---|
| `--proved` | Proved, confirmed, cleared, done | `#5fc9b6` | `#0e6b5e` |
| `--obligation` | Owed, pending, UI interaction & focus rings | `#a99bf5` | `#5340bb` |
| `--blocking` | Blocking, destructive, error | `#ef8377` | `#a01c12` |
| `--neutral-bg` | Neutral hover / highlight background | `#1b2b33` | `#dde5e9` |

## Typography Roles

| Role | Variable Name | Family | Usage |
|---|---|---|---|
| Display | `--font-display` | `Space Grotesk Variable` | Headings (`h1`..`h6`), post titles, brand wordmark |
| Body | `--font-body` | `Nunito Variable` | Running prose, paragraphs, lists |
| Utility Voice | `--font-mono` | `Cascadia Code Variable` | Dates, counts, tags, run IDs, metrics, code |

## Standalone Files

### 1. `tokens/reticle.css`
Portable CSS custom properties file. Import into any application:

```css
@import "tokens/reticle.css";

body {
  background: var(--paper);
  color: var(--ink);
  font-family: var(--font-body);
}
```

### 2. `tokens/reticle-dark.toml` & `tokens/reticle-light.toml`
TOML theme definitions for desktop applications, mail clients (e.g. `ecr`), or CLI tools.
