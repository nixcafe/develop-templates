# Available Templates

| Template | Language / Use Case | Description |
|---|---|---|
| `colmena-config` | NixOS Deployment | NixOS Configuration with [Colmena](https://github.com/zhaofengli/colmena) deployment and ISO/image builds |
| `java` | Java / JVM | Java development environment with GraalVM JDK, Maven, and Gradle |
| `kotlin` | Kotlin / JVM | Kotlin development environment with GraalVM JDK, Kotlin compiler, and Gradle |
| `latex` | LaTeX | LaTeX document authoring environment with Nix formatters and pre-commit hooks |
| `nix` | Nix | Nix development environment with nixfmt, deadnix, and statix (default template) |
| `nix-config` | NixOS / macOS | NixOS, nix-darwin, and home-manager configuration with auto-discovered systems |
| `node` | Node.js / JavaScript / TypeScript | Node.js development environment with Node.js, Bun, Deno, and ni |
| `python` | Python | Python development environment with auto-configured Python version, ruff, and hatchling |
| `rust` | Rust | Rust development environment with cargo, rustc, clippy, rustfmt, and rust-analyzer source resolution |
| `secrets` | Secrets Management | Encrypted secrets management with agenix/ragenix and YubiKey support |
| `typst` | Typst | Typst document authoring environment with Nix formatters and pre-commit hooks |

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
