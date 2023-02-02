load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def typescript_project_repositories(fixed = False):
  maybe(
    http_archive,
    name = "aspect_rules_js",
    sha256 = "9f51475dd2f99abb015939b1cf57ab5f15ef36ca6d2a67104450893fd0aa5c8b",
    strip_prefix = "rules_js-1.16.0",
    url = "https://github.com/aspect-build/rules_js/archive/refs/tags/v1.16.0.tar.gz",
  )

  if not fixed:
    # use aspect-build tarball
    maybe(
      http_archive,
      name = "aspect_rules_ts",
      sha256 = "acb20a4e41295d07441fa940c8da9fd02f8637391fd74a14300586a3ee244d59",
      strip_prefix = "rules_ts-1.2.0",
      url = "https://github.com/aspect-build/rules_ts/archive/refs/tags/v1.2.0.tar.gz",
    )
  else:
    # use the fork with the proposed fix
    maybe(
      http_archive,
      name = "aspect_rules_ts",
      strip_prefix = "rules_ts-f6413a356a814c9ed3f7cc7e1ca7a915b4104683",
      url = "https://github.com/alexander-fenster/rules_ts/archive/f6413a356a814c9ed3f7cc7e1ca7a915b4104683.tar.gz",
    )
