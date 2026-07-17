{ inputs, ... }:
{
  description = "NixOS Configuration with Colmena deployment";
  path = "${inputs.templates-colmena-config}";
  welcomeText = ''
    # Colmena Configuration Template
    Run `nix develop` to enter the dev shell.
  '';
}
