---
name: module-registration
description: Register and validate a new Bzlmod module version with immutable sources and consumer checks without local overrides.
---

# Module Registration

## When and prerequisites

Use for a new module/version. Read `AGENTS.md`, `docs/README.md`,
`docs/bcr-policies.md`, and relevant existing entries. The source revision must
be published and retrievable; preserve unrelated registry changes.

## Steps

1. Add a new version rather than rewriting a published version. Follow
   `docs/README.md` for metadata, MODULE, source, presubmit, and patch/overlay
   requirements.
2. Match module identity and dependencies to released source. Use immutable
   source references and required integrity hashes, not host-only local paths.
3. Run the documented module metadata validation in the approved environment,
   selecting the intended module/version rather than the entire registry.
4. Resolve/build/test the intended version from a consumer without local source
   overrides for the release dependency set. Confirm the edited registry is
   selected, not shadowed by an earlier remote registry.
5. Submit only with authorization. Verify the configured remote registry serves
   the new version and consumer validation succeeds without the local registry.

## Acceptance and failures

Metadata checks and required consumer tests pass using registry-fetched source.
A source override build or successful Git push alone is not release acceptance.
Stop at the first actionable error; request approval before changing versions,
lockfiles, dependencies, or environment to work around it.
