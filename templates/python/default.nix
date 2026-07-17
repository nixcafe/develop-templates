{ inputs, ... }:
{
  description = "Python development environment with pip, venv, and uv";
  path = "${inputs.templates-python}";
  welcomeText = ''
    # Python Template
    Run `nix develop` to enter the dev shell.
  '';
}
