# Available Templates

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

## Usage Examples

### Node.js

```bash
nix flake init -t beans#node
```

### Python

```bash
nix flake init -t beans#python
```

### Rust

```bash
nix flake init -t beans#rust
```

### Java

```bash
nix flake init -t beans#java
```
