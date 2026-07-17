{ inputs, ... }:
{
  description = "Typst document authoring environment";
  path = "${inputs.templates-typst}";
  welcomeText = ''
    # Typst Template
    Run `nix develop` to enter the dev shell.
  '';
}
