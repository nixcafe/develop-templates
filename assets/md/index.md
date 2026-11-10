# develop-templates

`develop-templates` is a collection of [Nix flake](https://nixos.wiki/wiki/Flakes) templates for development environments. Each template provides a `flake.nix` and the project files needed to start work in an empty directory.

The flake is published on [FlakeHub](https://flakehub.com/flake/nixcafe/develop-templates).

## Quick Start

```bash
# Register an alias (optional)
nix registry add beans "github:nixcafe/develop-templates"

# Initialize a template
nix flake init -t beans#node

# Enter the development shell
nix develop
```

Without the alias:

```bash
nix flake init -t "github:nixcafe/develop-templates#node" --refresh
```

Replace `node` with any template name from the table below.

## Available Templates

| Template | Language or use case | Contents |
|---|---|---|
| `nix` | Nix | `nixfmt`, `deadnix`, `statix` |
| `node` | Node.js | Node.js, Bun, Deno, `ni`, `corepack` |
| `python` | Python | Python version from `requires-python`, `ruff`, `hatchling` |
| `rust` | Rust | `cargo`, `rustc`, `clippy`, `rustfmt`, `pkg-config`, `RUST_SRC_PATH` for rust-analyzer |
| `java` | Java | GraalVM CE JDK, Maven, Gradle |
| `kotlin` | Kotlin | GraalVM CE JDK, Kotlin compiler, Gradle |
| `latex` | LaTeX | TeX Live, `latexmk`, `texlab`, `nixfmt`, `deadnix`, `statix` |
| `typst` | Typst | Typst, `tinymist`, `nixfmt`, `deadnix`, `statix` |
| `nix-config` | NixOS and macOS | NixOS, nix-darwin, home-manager, cattery-modules, image recipes via `meta.nix` |
| `colmena-config` | NixOS deployment | NixOS, Colmena, cattery-modules, image recipes via `meta.nix` |
| `secrets` | Secrets management | ragenix, age, `age-plugin-yubikey`, `nixfmt`, `deadnix`, `statix` |
| `purr` | purr | Standalone purr project using `mkFlake` |
| `purr-flake-parts` | purr with flake-parts | purr project using flake-parts |

See the [Available Templates](/templates) page for usage examples and details about how the templates are built.

## Repository layout

Most templates are wrappers around a repository under [nixcafe-develop](https://github.com/nixcafe-develop). Each wrapper sets `description`, `path`, and `welcomeText`:

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

For these templates, `path` points at a `templates-*` input in the root `flake.nix`. The input is declared with `flake = false`, so the template repository is fetched as plain source rather than as a flake.

The `purr` and `purr-flake-parts` templates work differently. Their `path` values point at `inputs.purr/template/default` and `inputs.purr/template/flake-parts`, so they use the `purr` flake input and have no separate template input.

The root `flake.nix` has 14 inputs: `nixpkgs`, `purr`, `git-hooks`, and 11 `templates-*` inputs. It calls `inputs.purr.lib.mkFlake` with `src = ./.`, and purr discovers the `templates/`, `shells/`, and `checks/` directories:

```text
flake.nix
flake.lock
templates/<name>/default.nix
shells/default/default.nix
checks/git-hooks/default.nix
```

See [Quick Start](/quick-start) for setup instructions and [Contributing](/contributing) for the process of adding a template.
