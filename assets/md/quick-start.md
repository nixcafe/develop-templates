# Quick Start

Run `nix flake init` in an empty directory. The template name is the directory name under `templates/` in the `develop-templates` repository.

## Direct flake reference

```bash
nix flake init -t "github:nixcafe/develop-templates#node" --refresh
```

Replace `node` with another template name. The `--refresh` flag makes Nix fetch the latest revision of the repository.

## Registry alias

Register the repository once in your [Nix registry](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-registry) to use a shorter reference:

```bash
nix registry add beans "github:nixcafe/develop-templates"
nix flake init -t beans#node
```

After registration, `beans#<name>` can be used anywhere the full `github:nixcafe/develop-templates#<name>` reference is accepted.

## With cattery-modules

If you use [cattery-modules](https://github.com/nixcafe/cattery-modules) and enable its shared Nix module, it registers `beans` in the Nix registry. You can skip `nix registry add` and run:

```bash
nix flake init -t beans#node
```

## After initialization

```bash
nix develop
```

This starts a shell with the tools listed in the [template table](/templates). Most templates also include a `.envrc`, so `direnv allow` works if direnv is installed.

## Template names

The available names are `nix`, `node`, `python`, `rust`, `java`, `kotlin`, `latex`, `typst`, `nix-config`, `colmena-config`, `secrets`, `purr`, and `purr-flake-parts`.

The flake does not define a `default` template, so `nix flake init -t beans` fails. Pass a name explicitly:

```bash
nix flake init -t beans#nix
```
