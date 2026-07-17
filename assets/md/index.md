# develop-templates

> Nix flake templates for reproducible development environments — bootstrap Node.js, Python, Rust, Java, Kotlin, NixOS configs, and more with a single command.

A curated collection of [Nix flake](https://nixos.wiki/wiki/Flakes) project templates. Bootstrap reproducible development environments for any programming language with `nix flake init -t`. Drop-in replacements for language-specific version managers — powered by Nix, no Docker, no manual toolchain setup.

Each template is a thin wrapper that pulls its content from a dedicated repository under [nixcafe-develop](https://github.com/nixcafe-develop). Templates are managed as Nix flake inputs (no git submodules).

***

## Why Nix Flake Templates?

* **Reproducible** — identical development environments across Linux, macOS, and WSL
* **No Docker overhead** — native builds with Nix, no container runtime needed
* **Declarative** — define your dev tools, dependencies, and environment variables in one `flake.nix`
* **Zero-install bootstrap** — `nix flake init -t` + `nix develop` and you're ready to code
* **Polyglot** — one toolchain to manage dev environments for all programming languages
* **CI-friendly** — same environment locally and in GitHub Actions / GitLab CI
