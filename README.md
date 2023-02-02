## Use TypeScript executable from another Bazel project

Full example of the problem of using TypeScript executable from another Bazel
project with `aspect-build/rules_ts` v1.2.0.

### Pull request

[https://github.com/aspect-build/rules\_ts/pull/304](https://github.com/aspect-build/rules_ts/pull/304)

### Usage

1. Clone the repository

2. Run the following commands:

```sh
cd custom_rule
bazel build //...
```

3. The suggested fix works. To check it, replace one line in the `WORKSPACE` file:

```diff
-typescript_project_repositories(fixed = False)
+typescript_project_repositories(fixed = True)
```

With this change, it will fetch `rules_ts` from the fork with the suggested
[fix](https://github.com/alexander-fenster/rules_ts/commit/0e5539be9a2d8289044e8143f80f0a2e3f6035dd).
