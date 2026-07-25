<p align="center">
  <h1 align="center">develop-templates</h1>
  <p align="center">
    Curated <a href="https://nixos.wiki/wiki/Flakes">Nix flake</a> project templates — <strong>bootstrap reproducible development environments with a single command.</strong>
    <br />
    <a href="https://templates.nixcafe.org"><strong>templates.nixcafe.org</strong></a>
  </p>
</p>

<p align="center">
  <a href="https://flakehub.com/flake/nixcafe/develop-templates"><img src="https://img.shields.io/badge/FlakeHub-nixcafe%2Fdevelop--templates-blue?logo=nixos" alt="FlakeHub" /></a>
  <a href="https://github.com/nixcafe/develop-templates/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-CC0--1.0-brightgreen" alt="License" /></a>
</p>

---

## Quick Start

```bash
# Register the alias (once)
nix registry add beans "github:nixcafe/develop-templates"

# Bootstrap a project
nix flake init -t beans#node
nix flake init -t beans#python
nix flake init -t beans#rust
nix flake init -t beans#java

# Enter the dev shell
nix develop
```

That's it — no Docker, no manual toolchain setup, no version managers. `nix develop` drops you into a fully provisioned environment with your language toolchain, formatters, linters, and pre-commit hooks.

## Available Templates

| Template | Stack | What's included |
|---|---|---|
| `nix` *(default)* | Nix | nixfmt, deadnix, statix — Nix dev shell with formatting & linting |
| `node` | Node.js / Bun / Deno | Node.js, Bun, Deno, ni — pick your runtime |
| `python` | Python | Python auto-configured, ruff, hatchling |
| `rust` | Rust | cargo, rustc, clippy, rustfmt, rust-analyzer |
| `java` | Java | GraalVM JDK, Maven, Gradle |
| `kotlin` | Kotlin | GraalVM JDK, Kotlin compiler, Gradle |
| `latex` | LaTeX | LaTeX with Nix formatters and pre-commit hooks |
| `typst` | Typst | Typst with Nix formatters and pre-commit hooks |
| `nix-config` | NixOS / macOS | NixOS, nix-darwin, home-manager with auto-discovered systems |
| `colmena-config` | NixOS + Colmena | NixOS with Colmena deployment & ISO/image builds |
| `secrets` | Secrets | agenix/ragenix with YubiKey support |
| `purr` | purr Framework | purr project (mkFlake, standalone) |
| `purr-flake-parts` | purr + flake-parts | purr project with flake-parts integration |

## Why Nix Flake Templates?

- **Reproducible** — identical environments across Linux, macOS, and WSL
- **No Docker overhead** — native Nix builds, no container runtime
- **Declarative** — tools, dependencies, and env vars in one `flake.nix`
- **Zero-install bootstrap** — `nix flake init -t` + `nix develop`, ready to code
- **Polyglot** — one toolchain for all programming languages
- **CI-friendly** — same environment locally and in GitHub Actions / GitLab CI

## How It Works

Each template is a thin wrapper that pulls content from a dedicated repository under [nixcafe-develop](https://github.com/nixcafe-develop):

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

The template flake itself uses [purr](https://github.com/nixcafe/purr) for auto-discovery:

```
flake.nix                    # inputs + mkFlake call
templates/                   # 13 templates, each a default.nix wrapper
shells/default/default.nix   # Dev shell with nixfmt, deadnix, statix
checks/git-hooks/            # pre-commit hooks
```

## Development

```bash
git clone https://github.com/nixcafe/develop-templates.git
cd develop-templates
nix develop        # enters dev shell with nixfmt, deadnix, statix

nix flake check    # run all checks
```

## Documentation

Full docs at **[templates.nixcafe.org](https://templates.nixcafe.org)** — quick start, template details, contributing guide.

## License

[CC0 1.0 Universal](LICENSE)
