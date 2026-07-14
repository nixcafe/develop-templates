{ inputs, ... }:
{
  description = "Python development environment";
  path = "${inputs.templates-python}";
  welcomeText = ''
    # Python Template
    Run `nix develop` to enter the dev shell.
  '';
}
