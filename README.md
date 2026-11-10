# develop-templates

Nix flake templates for development environments.

[Template site](https://templates.nixcafe.org) · [FlakeHub](https://flakehub.com/flake/nixcafe/develop-templates) · [License](LICENSE)

## Quick Start

```bash
# Register the alias (once)
nix registry add beans "github:nixcafe/develop-templates"

# Copy one template into the current directory
nix flake init -t beans#node
nix flake init -t beans#python
nix flake init -t beans#rust
nix flake init -t beans#java

# Enter the development shell
nix develop
```

`nix flake init` copies the template files into the current directory. `nix develop` starts a shell with the language toolchain, formatters, linters, and pre-commit hooks defined by the template. If direnv is installed, run `direnv allow` to load the shell automatically.

## Available Templates

There are 13 templates:

| Template | Stack | What's included |
|---|---|---|
| `nix` | Nix | nixfmt, deadnix, statix, and pre-commit hooks |
| `node` | Node.js, Bun, Deno | Node.js runtime, corepack, ni, Bun, and Deno |
| `python` | Python | Python version from `requires-python`, ruff, ruff-format, and hatchling |
| `rust` | Rust | cargo, rustc, clippy, rustfmt, and Rust source for rust-analyzer |
| `java` | Java | GraalVM JDK, Maven, and Gradle |
| `kotlin` | Kotlin | GraalVM JDK, Kotlin compiler, and Gradle |
| `latex` | LaTeX | texlive, latexmk, texlab, chktex, latexindent, and minted |
| `typst` | Typst | Typst, tinymist, Nix formatters and linters, and pre-commit hooks |
| `nix-config` | NixOS, nix-darwin, home-manager | System configurations, pre-commit hooks, and ISO, VM, and cloud image recipes |
| `colmena-config` | NixOS and Colmena | NixOS configuration with Colmena deployment and image recipes in `meta.nix` |
| `secrets` | agenix and ragenix | age-encrypted per-host and shared secrets, YubiKey keys, and `update-secrets` |
| `purr` | purr | Minimal flake using purr standalone (mkFlake) |
| `purr-flake-parts` | purr and flake-parts | Minimal flake using purr with flake-parts |

## How It Works

Most templates are wrappers that point at a dedicated repository under [nixcafe-develop](https://github.com/nixcafe-develop):

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

The `purr` and `purr-flake-parts` templates use subdirectories of the `purr` input instead, so `flake.nix` has no separate inputs for them:

```nix
# templates/purr/default.nix
path = "${inputs.purr}/template/default";

# templates/purr-flake-parts/default.nix
path = "${inputs.purr}/template/flake-parts";
```

The template flake uses [purr](https://github.com/nixcafe/purr) to discover templates and other outputs:

```
flake.nix                    # inputs and mkFlake call
templates/                   # 13 templates, each a default.nix wrapper
shells/default/default.nix   # Development shell with nixfmt, deadnix, and statix
checks/git-hooks/            # pre-commit hooks
```

Each directory under `templates/` becomes a template with the same name. The flake does not define a `default` template, so pass a name with `-t` (for example, `nix flake init -t beans#nix`).

## Development

```bash
git clone https://github.com/nixcafe/develop-templates.git
cd develop-templates
nix develop        # development shell with nixfmt, deadnix, and statix

nix flake check    # run all checks
```

## Documentation

Documentation is at [templates.nixcafe.org](https://templates.nixcafe.org), including quick start, template details, and the contributing guide.

## License

[CC0 1.0 Universal](LICENSE)
