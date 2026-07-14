{ inputs, ... }:
{
  description = "Kotlin development environment";
  path = "${inputs.templates-kotlin}";
  welcomeText = ''
    # Kotlin Template
    Run `nix develop` to enter the dev shell.
  '';
}
