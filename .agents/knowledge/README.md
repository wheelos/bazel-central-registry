# Repository Knowledge

## Scope

The registry owns version metadata and source acquisition descriptions, not
dependency source development. `modules/<name>/metadata.json` lists versions;
each version directory declares its module, source, and presubmit checks.
Published versions are immutable. Local path overrides are consumer development
configuration, not portable registry publication.

## Evidence and policy

- `docs/README.md`: contribution structure, accepted sources, and validation.
- `docs/bcr-policies.md`: publication policy.
- `modules/`: module metadata and version entries.

Keep upstream policy at its existing path rather than copying it here.
Add private-registry-specific durable topics here with source evidence.
Procedures belong in `../skills/`; temporary investigations in `../notes/`.
Revisit the index when registry policy or metadata format changes.
