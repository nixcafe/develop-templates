{ inputs, ... }:
{
  description = "LaTeX document authoring environment";
  path = "${inputs.templates-latex}";
  welcomeText = ''
    # LaTeX Template
    Run `nix develop` to enter the dev shell.
  '';
}
