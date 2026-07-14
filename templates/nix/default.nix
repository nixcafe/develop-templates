{ inputs, ... }:
{
  description = "Nix development environment";
  path = "${inputs.templates-nix}";
  welcomeText = ''
    # Nix Template
    Run `nix develop` to enter the dev shell.
  '';
}
