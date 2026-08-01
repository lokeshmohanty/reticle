# reticle — Agent Index

> Minimal index. `STATUS.md` is on demand, not by default: read it (or grep the section you need) only when the task turns on current state. Full documentation in
> `docs/` (start at `docs/index.md`). Global harness rules: `~/.agents/AGENTS.md`.

## What this is

An instrument-reading design system for Zola — Space Grotesk + Nunito + Cascadia Code typography, semantic accents (proved/obligation/blocking), and the margin-tape signature element. Supports documentation (with versioning), e-books, blogs, and product landing pages.

## Map

| path | what |
|---|---|
| `STATUS.md` | volatile: current focus, next actions, obligations |
| `docs/` | full documentation — answer questions from here first |
| `.agents/skills/` | project skills + memories (invoke on demand) |

## Project skills

*(none yet — create with the `harness-ops` skill when durable knowledge accumulates)*

## Binding rules

1. Significant changes update `docs/` in the same session (`docs-sync` skill).
2. Durable knowledge → a skill's `memory/`; volatile state → `STATUS.md`; never bloat this file.
3. Summaries in main context; exploration in sub-agents.
