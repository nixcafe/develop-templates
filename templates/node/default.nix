{ inputs, ... }:
{
  description = "Node.js development environment with Node.js, Bun, Deno, and ni";
  path = "${inputs.templates-node}";
  welcomeText = ''
    # Node.js Template
    Run `nix develop` to enter the dev shell.
  '';
}
