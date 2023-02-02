def _call_binary_impl(ctx):
    args = [ctx.outputs.out.path]
    ctx.actions.run(
        inputs = [],
        outputs = [ctx.outputs.out],
        arguments = args,
        progress_message = "Running TypeScript js_binary",
        executable = ctx.executable.binary,
    )


call_binary = rule(
    implementation = _call_binary_impl,
    attrs = {
        "binary": attr.label(
            executable = True,
            cfg = "exec",
        ),
        "out": attr.output(
            mandatory = True
        ),
    },
)
