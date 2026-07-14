{ inputs, ... }:
{
  description = "Java development environment";
  path = "${inputs.templates-java}";
  welcomeText = ''
    # Java Template
    Run `nix develop` to enter the dev shell.
  '';
}
