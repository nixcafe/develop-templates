{ inputs, ... }:
{
  description = "Python development environment with auto-configured Python version, ruff, and hatchling";
  path = "${inputs.templates-python}";
  welcomeText = ''
    # Python Template
    Run `nix develop` to enter the dev shell.
  '';
}
