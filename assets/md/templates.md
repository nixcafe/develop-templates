# Available Templates

The `templates/` directory contains 13 templates. The directory name is the template name passed to `nix flake init -t`.

## All Templates

| Template | Language or use case | Description |
|---|---|---|
| `nix` | Nix | Nix development environment with `nixfmt`, `deadnix`, and `statix` |
| `node` | Node.js, JavaScript, TypeScript | Node.js development environment with Node.js, Bun, Deno, `ni`, and `corepack` |
| `python` | Python | Python development environment with a Python version selected from `requires-python`, `ruff`, and `hatchling` |
| `rust` | Rust | Rust development environment with `cargo`, `rustc`, `clippy`, `rustfmt`, `pkg-config`, and `RUST_SRC_PATH` for rust-analyzer |
| `java` | Java, JVM | Java development environment with GraalVM CE JDK, Maven, and Gradle |
| `kotlin` | Kotlin, JVM | Kotlin development environment with GraalVM CE JDK, the Kotlin compiler, and Gradle |
| `latex` | LaTeX | LaTeX environment with TeX Live, `latexmk`, `texlab`, `nixfmt`, `deadnix`, and `statix` |
| `typst` | Typst | Typst environment with Typst, `tinymist`, `nixfmt`, `deadnix`, and `statix` |
| `nix-config` | NixOS, macOS | NixOS, nix-darwin, and home-manager configuration with cattery-modules and image recipes declared in host `meta.nix` files |
| `colmena-config` | NixOS deployment | NixOS configuration with [Colmena](https://github.com/zhaofengli/colmena) deployment, cattery-modules, and image recipes declared in host `meta.nix` files |
| `secrets` | Secrets management | Encrypted secrets with ragenix (agenix-compatible), age, and `age-plugin-yubikey` |
| `purr` | purr | Standalone purr project using `mkFlake` |
| `purr-flake-parts` | purr with flake-parts | purr project using flake-parts |

## Usage Examples

```bash
# Nix
nix flake init -t beans#nix

# Node.js
nix flake init -t beans#node

# Python
nix flake init -t beans#python

# Rust
nix flake init -t beans#rust

# Java
nix flake init -t beans#java

# Kotlin
nix flake init -t beans#kotlin

# LaTeX
nix flake init -t beans#latex

# Typst
nix flake init -t beans#typst

# NixOS configuration
nix flake init -t beans#nix-config

# Colmena configuration
nix flake init -t beans#colmena-config

# Secrets
nix flake init -t beans#secrets

# purr project
nix flake init -t beans#purr

# purr with flake-parts
nix flake init -t beans#purr-flake-parts
```

If `beans` is not registered, use the full reference:

```bash
nix flake init -t "github:nixcafe/develop-templates#rust" --refresh
```

## How Templates Work

Each template is a `default.nix` file under `templates/<name>/`:

```nix
# templates/node/default.nix
{ inputs, ... }:
{
  description = "Node.js development environment with Node.js, Bun, Deno, and ni";
  path = "${inputs.templates-node}";
  welcomeText = ''
    # Node.js Template
    Run `nix develop` to enter the dev shell.
  '';
}
```

`path` points at the source that `nix flake init` copies.

For most templates, `path` references a `templates-*` input in the root `flake.nix`. These inputs use `github:nixcafe-develop/<repository>` with `flake = false`. The `templates-secrets` input points at `github:nixcafe-develop/nix-secrets`.

The `purr` and `purr-flake-parts` templates do not use a `templates-*` input. They reference `inputs.purr/template/default` and `inputs.purr/template/flake-parts`.

The root `flake.nix` uses `inputs.purr.lib.mkFlake` with `src = ./.`. purr scans `templates/` and exposes each `default.nix` as `templates.<name>`. It also discovers the dev shells in `shells/` and the git hooks check in `checks/`.
