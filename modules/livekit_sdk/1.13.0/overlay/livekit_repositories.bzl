"""Platform-specific prebuilt LiveKit SDK repositories."""

def _platform_sdk_impl(ctx):
    ctx.download_and_extract(
        url = ctx.attr.url,
        sha256 = ctx.attr.sha256,
        stripPrefix = ctx.attr.strip_prefix,
    )
    ctx.template(
        "BUILD.bazel",
        ctx.attr.build_file,
        substitutions = {"%{CPU}": ctx.attr.cpu},
    )

platform_sdk = repository_rule(
    implementation = _platform_sdk_impl,
    attrs = {
        "cpu": attr.string(
            mandatory = True,
            values = ["aarch64", "x86_64"],
        ),
        "build_file": attr.label(
            default = Label("//:sdk.BUILD.bazel"),
        ),
        "sha256": attr.string(mandatory = True),
        "strip_prefix": attr.string(mandatory = True),
        "url": attr.string(mandatory = True),
    },
)
