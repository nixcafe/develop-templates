{ inputs, ... }:
{
  description = "Node.js development environment";
  path = "${inputs.templates-node}";
  welcomeText = ''
    # Node.js Template
    Run `nix develop` to enter the dev shell.
  '';
}
