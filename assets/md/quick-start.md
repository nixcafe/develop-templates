# Quick Start

## nix flake init (direct)

```bash
nix flake init -t "github:nixcafe/develop-templates#${template_name}" --refresh
```

## nix registry (recommended)

Add to your [Nix registry](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-registry) for shorter commands:

```bash
nix registry add beans "github:nixcafe/develop-templates"
nix flake init -t beans#${template_name}
```

## With Cattery Modules

If you use [cattery-modules](https://github.com/nixcafe/cattery-modules) for NixOS deployment, the templates are pre-registered:

```bash
nix flake init -t beans#${template_name}
```

## Default Template

The default template is `nix` — a Nix development shell with formatting, linting, and dead code detection tools. Used when no template is specified.

```bash
nix flake init -t beans
```
