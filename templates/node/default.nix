{ inputs, ... }:
{
  description = "Node.js development environment with npm, yarn, pnpm, and corepack";
  path = "${inputs.templates-node}";
  welcomeText = ''
    # Node.js Template
    Run `nix develop` to enter the dev shell.
  '';
}
