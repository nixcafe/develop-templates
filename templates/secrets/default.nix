{ inputs, ... }:
{
  description = "Secrets file management";
  path = "${inputs.templates-secrets}";
  welcomeText = ''
    # Secrets Template
    Run `nix develop` to enter the dev shell.
    Run `nix run .#update` to update secrets.
  '';
}
