{ inputs, ... }:
{
  description = "Encrypted secrets management with agenix/ragenix and YubiKey support";
  path = "${inputs.templates-secrets}";
  welcomeText = ''
    # Secrets Template
    Run `nix develop` to enter the dev shell.
    Run `nix run .#update` to update secrets.
  '';
}
