{ inputs, ... }:
{
  description = "Nix development environment with nixfmt, deadnix, and statix (default template)";
  path = "${inputs.templates-nix}";
  welcomeText = ''
    # Nix Template
    Run `nix develop` to enter the dev shell.
  '';
}
