{ inputs, ... }:
{
  description = "Kotlin development environment with GraalVM JDK, Kotlin compiler, and Gradle";
  path = "${inputs.templates-kotlin}";
  welcomeText = ''
    # Kotlin Template
    Run `nix develop` to enter the dev shell.
  '';
}
