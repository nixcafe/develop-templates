# How to use Develop Templates

```shell
nix flake init -t "git+https://github.com/nixcafe/develop-templates.git?submodules=1#${develop_name}" --refresh
```

Or add nix registry:

```shell
nix registry add beans "git+https://github.com/nixcafe/develop-templates.git?submodules=1"
```

After that, you can use the templates by running:

```shell
nix flake init -t beans#${develop_name} --refresh
```

## Templates

- `nix`: Nix development environment
- `nix-config`: NixOS configuration
- `node`: Node.js development environment
- `rust`: Rust development environment
- `secrets`: Secrets file management

## Default Template

The default template is `nix`.

