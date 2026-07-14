{ inputs, ... }:
{
  description = "NixOS Configuration with Colmena Deployment";
  path = "${inputs.templates-colmena-config}";
  welcomeText = ''
    # Colmena Configuration Template
    Run `nix develop` to enter the dev shell.
  '';
}
