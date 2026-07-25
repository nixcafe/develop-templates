# develop-templates

Curated [Nix flake](https://nixos.wiki/wiki/Flakes) project templates — **bootstrap reproducible development environments with a single command.**

## Quick Start

```bash
# Register the alias (once)
nix registry add beans "github:nixcafe/develop-templates"

# Bootstrap a project
nix flake init -t beans#node
nix flake init -t beans#python
nix flake init -t beans#rust

# Enter the dev shell
nix develop
```

That's it — no Docker, no manual toolchain setup, no version managers.

## Available Templates

| Template | Stack | What's included |
|---|---|---|
| `nix` *(default)* | Nix | nixfmt, deadnix, statix — Nix dev shell with formatting & linting |
| `node` | Node.js / Bun / Deno | Node.js, Bun, Deno, ni |
| `python` | Python | Python auto-configured, ruff, hatchling |
| `rust` | Rust | cargo, rustc, clippy, rustfmt, rust-analyzer |
| `java` | Java | GraalVM JDK, Maven, Gradle |
| `kotlin` | Kotlin | GraalVM JDK, Kotlin compiler, Gradle |
| `latex` | LaTeX | LaTeX with Nix formatters |
| `typst` | Typst | Typst with Nix formatters |
| `nix-config` | NixOS / macOS | NixOS, nix-darwin, home-manager |
| `colmena-config` | NixOS + Colmena | NixOS with Colmena deployment |
| `secrets` | Secrets | agenix/ragenix with YubiKey |
| `purr` | purr Framework | purr project (mkFlake) |
| `purr-flake-parts` | purr + flake-parts | purr with flake-parts |

See the [Available Templates](/templates) page for descriptions and usage examples for every template.

## Why Nix Flake Templates?

* **Reproducible** — identical environments across Linux, macOS, and WSL
* **No Docker overhead** — native Nix builds, no container runtime
* **Declarative** — tools, dependencies, and env vars in one `flake.nix`
* **Zero-install bootstrap** — `nix flake init -t` + `nix develop`
* **Polyglot** — one toolchain for all programming languages
* **CI-friendly** — same environment locally and in CI

## Architecture

Each template is a thin wrapper pulling content from a dedicated repository under [nixcafe-develop](https://github.com/nixcafe-develop):

```nix
# templates/node/default.nix
{ inputs, ... }:
{
  description = "Node.js development environment";
  path = "${inputs.templates-node}";
  welcomeText = ''
    # Node.js — Nix Development Environment
    Run `nix develop` to enter the dev shell.
  '';
}
```

The template flake itself is built with [purr](https://github.com/nixcafe/purr) — directory convention, auto-discovery, zero boilerplate.

See the [Quick Start](/quick-start) page for detailed setup instructions, and [Contributing](/contributing) to add your own template.
