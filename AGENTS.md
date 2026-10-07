# Agent Guide

## Rules

- Read `docs/README.md`, the relevant module metadata, and source before editing.
- Preserve published versions; add a new version or `.bcr.<N>` revision.
- Keep sources immutable and retrievable; verify integrity and module metadata.
- Preserve existing local changes and keep edits within the requested module.
- Commit/push and changes to dependencies or build environments require approval.

## Entry points

- Workflows: [`.agents/skills/README.md`](.agents/skills/README.md)
- Durable knowledge: [`.agents/knowledge/README.md`](.agents/knowledge/README.md)
- Temporary investigations: [`.agents/notes/README.md`](.agents/notes/README.md)
- `.github/` owns CI and GitHub governance. `GEMINI.md` remains a provider guide;
  source and the contribution policy take precedence over summaries.

## Validation

Use the module registration skill to select metadata checks and consumer
validation. Local source overrides do not validate published registry entries.
