{ inputs, ... }:
{
  description = "Rust development environment with cargo, rustc, clippy, rustfmt, and rust-analyzer source resolution";
  path = "${inputs.templates-rust}";
  welcomeText = ''
    # Rust Template
    Run `nix develop` to enter the dev shell.
    Run `nix build` to build the project.
  '';
}
