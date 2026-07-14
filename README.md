# Nix Flake Templates — Development Environment Templates for Nix & NixOS

A curated collection of [Nix flake](https://nixos.wiki/wiki/Flakes) project templates. Bootstrap reproducible development environments for any programming language with a single `nix flake init -t` command. Drop-in replacements for language-specific version managers — powered by Nix, no Docker, no manual toolchain setup.

**Keywords**: nix flake templates, nix develop template, nix dev shell, reproducible development environment, nix project starter, nix boilerplate, flake init template

Each template is a thin wrapper that pulls its content from a dedicated repository under [nixcafe-develop](https://github.com/nixcafe-develop). Templates are managed as Nix flake inputs (no git submodules).

## Quick Start

### nix flake init (direct)

```shell
nix flake init -t "github:nixcafe/develop-templates#${template_name}" --refresh
```

### nix registry (recommended)

Add to your [Nix registry](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-registry) for shorter commands:

```shell
nix registry add beans "github:nixcafe/develop-templates"
nix flake init -t beans#${template_name}
```

### With Cattery Modules

If you use [cattery-modules](https://github.com/nixcafe/cattery-modules) for NixOS deployment, the templates are pre-registered:

```shell
nix flake init -t beans#${template_name}
```

## Available Nix Development Templates

| Template | Language / Use Case | Description |
|---|---|---|
| `colmena-config` | NixOS Deployment | NixOS Configuration with [Colmena](https://github.com/zhaofengli/colmena) deployment |
| `java` | Java / JVM | Java development environment with JDK, Maven, and Gradle |
| `kotlin` | Kotlin / JVM | Kotlin development environment with Kotlin compiler and Gradle |
| `nix` | Nix | Nix development environment with nixfmt, deadnix, statix (default) |
| `nix-config` | NixOS | NixOS system configuration flake template |
| `node` | Node.js / JavaScript / TypeScript | Node.js development environment with npm, yarn, pnpm, and corepack |
| `python` | Python | Python development environment with pip, venv, and uv |
| `rust` | Rust | Rust development environment with cargo, rustc, rustfmt, clippy, and rust-analyzer |
| `secrets` | Secrets Management | Encrypted secrets management with agenix or sops-nix integration |

## Default Template

The default template is `nix` — a Nix development shell with formatting, linting, and dead code detection tools. Used when no template is specified.

## Why Nix Flake Templates?

- **Reproducible**: identical development environments across Linux, macOS, and WSL
- **No Docker overhead**: native builds with Nix, no container runtime needed
- **Declarative**: define your dev tools, dependencies, and environment variables in one `flake.nix`
- **Zero-install bootstrap**: `nix flake init -t` + `nix develop` and you're ready to code
- **Polyglot**: one toolchain to manage dev environments for all programming languages
- **CI-friendly**: same environment locally and in GitHub Actions / GitLab CI

## Contributing

This project follows [GitHub Flow](https://docs.github.com/en/get-started/using-github/github-flow). All contributions must be made via pull requests against the `main` branch.

### Development Shell

```shell
git clone https://github.com/nixcafe/develop-templates.git
cd develop-templates
nix develop
```

The dev shell provides `nixfmt`, `deadnix`, and `statix` with [git-hooks](https://github.com/cachix/git-hooks.nix) enabled. Formatting and linting run automatically on every commit.

### Creating a Feature Branch

```shell
git checkout -b feat/my-new-template
```

### Adding a New Nix Template

1. Create a repository under [nixcafe-develop](https://github.com/nixcafe-develop) with your template files (a standard `flake.nix` + `flake.lock`)
2. Add the repository as a flake input in `flake.nix`:

```nix
templates-<name> = {
  url = "github:nixcafe-develop/<repo-name>";
  flake = false;
};
```

3. Create `templates/<name>/default.nix`:

```nix
{ inputs, ... }:
{
  description = "Description of your template";
  path = "${inputs.templates-<name>}";
  welcomeText = ''
    # Template Name — Nix Development Environment
    Run `nix develop` to enter the dev shell.
  '';
}
```

4. Run git-hooks checks manually if needed:

```shell
nix flake check
```

5. Open a pull request to the `main` branch. All PRs require at least one approving review and must pass CI checks before merging.

## CI/CD (GitHub Actions)

### On Pull Request

Git hooks checks (`nixfmt`, `deadnix`, `statix`) run automatically on all PRs.

### On Push to Main

The Nix flake is automatically published to [FlakeHub](https://flakehub.com) as `nixcafe/develop-templates` with rolling versioning. This ensures flakes consuming these templates are not affected by GitHub API rate limits.

## Branch Protection

The `main` branch is protected:

- Pull request reviews are required (at least 1 approval)
- Status checks must pass before merging
- Stale reviews are dismissed when new commits are pushed

All development happens on feature branches and is merged to `main` via pull requests.
