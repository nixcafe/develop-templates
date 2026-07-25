{ inputs, ... }:
{
  description = "A minimal flake using purr standalone (mkFlake)";
  path = "${inputs.purr}/template/default";
  welcomeText = ''
    # Purr Standalone Template
    Run `nix develop` to enter the dev shell.
  '';
}
