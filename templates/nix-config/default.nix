{ inputs, ... }:
{
  description = "NixOS system configuration";
  path = "${inputs.templates-nix-config}";
  welcomeText = ''
    # NixOS Configuration Template
    Run `nix develop` to enter the dev shell.
  '';
}
