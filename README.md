# NixCafe Develop Templates

A collection of development environment templates powered by Nix. This repository provides ready-to-use templates for various programming languages and development scenarios, making it easy to bootstrap new projects with consistent development environments.

## Quick Start

### Method 1: Direct Template Usage

```shell
nix flake init -t "git+https://github.com/nixcafe/develop-templates.git?submodules=1#${develop_name}" --refresh
```

### Method 2: Using Nix Registry (Recommended)

Add the templates to your nix registry for easier access:

```shell
nix registry add beans "git+https://github.com/nixcafe/develop-templates.git?submodules=1"
```

Then use the templates with:

```shell
nix flake init -t beans#${develop_name} --refresh
```

### Method 3: Using with Cattery Modules

If you are using cattery-modules for your NixOS deployment, the templates are already included. You can directly use:

```shell
nix flake init -t beans#${develop_name}
```

## Available Templates

- `java`: Java development environment with JDK and common build tools
- `kotlin`: Kotlin development environment with Kotlin compiler and build tools
- `nix`: Nix development environment with common Nix development tools
- `nix-config`: NixOS configuration template with system management tools
- `node`: Node.js development environment with npm/yarn/pnpm support
- `python`: Python development environment with pip and virtualenv
- `rust`: Rust development environment with cargo and common tools
- `secrets`: Secrets file management template with encryption tools

## Default Template

The default template is `nix`. If no template is specified, this will be used.

## Contributing

Feel free to contribute new templates or improve existing ones. Please follow the contribution guidelines in the repository.

