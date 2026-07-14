{ inputs, ... }:
{
  description = "Rust development environment";
  path = "${inputs.templates-rust}";
  welcomeText = ''
    # Rust Template
    Run `nix develop` to enter the dev shell.
    Run `nix build` to build the project.
  '';
}
