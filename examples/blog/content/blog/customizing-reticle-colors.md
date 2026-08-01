+++
title = "Customizing Reticle Colors & Theme Tokens"
date = 2026-07-28
description = "Learn how to customize the instrument-reading color palette and semantic tokens in the Reticle theme."
[taxonomies]
tags = ["theme", "css", "design-system", "reticle"]
[extra]
author = "Lokesh Mohanty"
read_time = "4 min read"
+++

Reticle uses an **instrument-reading color system**: blueprint-paper ground (`--paper`), petrol ink (`--ink`), and three semantic accents that carry meaning rather than decoration.

## The Semantic Accents

Reticle's color system revolves around three core state accents:

| Token | Hue | Meaning |
|---|---|---|
| `--proved` | Teal (`#0e6b5e` / `#5fc9b6`) | Proved, confirmed, cleared, done |
| `--obligation` | Violet (`#5340bb` / `#a99bf5`) | Owed, awaiting judgement, in progress (also the primary UI accent) |
| `--blocking` | Red (`#a01c12` / `#ef8377`) | Blocking, error, destructive action |

## Core Color Tokens

### Ground & Inks

```css
:root {
  --paper: #0c151a;      /* Deep blueprint dark canvas */
  --paper-2: #111d24;    /* Sidebar and panel background */
  --card: #14222a;       /* Lifted surface background */
  --ink: #e6eef1;        /* Primary text */
  --ink-2: #9fb2bb;      /* Secondary text */
  --ink-3: #708590;      /* Muted labels & dates */
  --rule: #2a3d47;       /* Primary borders */
  --rule-soft: #1e2e37;  /* Soft dividers */
}
```

### Signature Element: Margin Tape

Reticle includes a **margin tape** component (`.tape`) — a 3px left border whose color indicates the state of the content beside it:

```html
<div class="tape">
  <div class="tape__rail tape__rail--obligation"></div>
  <div class="tape__body">
    <p>This item requires your review.</p>
  </div>
</div>
```

## Overriding Tokens in Extra CSS

You can override any token in your site's custom CSS file:

```css
:root {
  /* Customize the primary UI accent */
  --obligation: #6366f1;
  --obligation-bg: #1e1b4b;
}
```

Enjoy customizing your Reticle site!
