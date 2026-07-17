# develop-templates

Curated [Nix flake](https://nixos.wiki/wiki/Flakes) project templates — bootstrap reproducible development environments with a single command.

```bash
nix flake init -t beans#node
nix develop
```

## Documentation

Full docs at **[templates.nixcafe.org](https://templates.nixcafe.org)** — includes quick start, available templates, and contributing guide.

## Quick Reference

```bash
nix registry add beans "github:nixcafe/develop-templates"
nix flake init -t beans#${template_name}
```

| Template | Language |
|---|---|
| `nix` (default) | Nix |
| `node` | Node.js / TS |
| `python` | Python |
| `rust` | Rust |
| `java` | Java / JVM |
| `kotlin` | Kotlin / JVM |
| `nix-config` | NixOS config |
| `colmena-config` | NixOS + Colmena |
| `secrets` | Secrets (agenix/sops) |

## Development

```bash
nix develop
```

Pre-commit hooks: `nixfmt`, `deadnix`, `statix`. Run `nix flake check` before submitting PRs.
