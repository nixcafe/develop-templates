{ inputs, ... }:
{
  description = "A minimal flake using purr with flake-parts";
  path = "${inputs.purr}/template/flake-parts";
  welcomeText = ''
    # Purr + flake-parts Template
    Run `nix develop` to enter the dev shell.
  '';
}
