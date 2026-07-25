# Available Templates

## All Templates

| Template | Language / Use Case | Description |
|---|---|---|
| `nix` | Nix | Nix development environment with nixfmt, deadnix, and statix (default template) |
| `node` | Node.js / JavaScript / TypeScript | Node.js development environment with Node.js, Bun, Deno, and ni |
| `python` | Python | Python development environment with auto-configured Python version, ruff, and hatchling |
| `rust` | Rust | Rust development environment with cargo, rustc, clippy, rustfmt, and rust-analyzer source resolution |
| `java` | Java / JVM | Java development environment with GraalVM JDK, Maven, and Gradle |
| `kotlin` | Kotlin / JVM | Kotlin development environment with GraalVM JDK, Kotlin compiler, and Gradle |
| `latex` | LaTeX | LaTeX document authoring environment with Nix formatters and pre-commit hooks |
| `typst` | Typst | Typst document authoring environment with Nix formatters and pre-commit hooks |
| `nix-config` | NixOS / macOS | NixOS, nix-darwin, and home-manager configuration with auto-discovered systems |
| `colmena-config` | NixOS Deployment | NixOS Configuration with [Colmena](https://github.com/zhaofengli/colmena) deployment and ISO/image builds |
| `secrets` | Secrets Management | Encrypted secrets management with agenix/ragenix and YubiKey support |
| `purr` | purr Framework | purr project template using mkFlake (standalone) |
| `purr-flake-parts` | purr + flake-parts | purr project template with flake-parts integration |

## Usage Examples

```bash
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

# Nix dev
nix flake init -t beans#nix

# NixOS config
nix flake init -t beans#nix-config

# Colmena config
nix flake init -t beans#colmena-config

# Secrets
nix flake init -t beans#secrets

# purr project
nix flake init -t beans#purr

# purr + flake-parts
nix flake init -t beans#purr-flake-parts
```

## How Templates Work

Each template is defined as a thin `default.nix` wrapper:

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

The template content lives in a separate repository under [nixcafe-develop](https://github.com/nixcafe-develop) and is pulled in as a flake input (`flake = false`). This keeps the templates flake lightweight while allowing each template to evolve independently.
