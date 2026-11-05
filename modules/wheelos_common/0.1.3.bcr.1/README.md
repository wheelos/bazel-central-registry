# wheelos_common 0.1.3.bcr.1

This registry revision adds `@wheelos_common//tools:package_files` for the
legacy Common SDK installer. The overlay contains packaging rules only; module
libraries and their source remain from the immutable `v0.1.3` archive.

The target packages the existing Common library, protobuf-header and Python
message outputs used by the Apollo-Lite aggregate installer. `rules_pkg` is a
direct dependency because the exported target loads its packaging rules.
