{ inputs, ... }:
{
  description = "Java development environment with GraalVM JDK, Maven, and Gradle";
  path = "${inputs.templates-java}";
  welcomeText = ''
    # Java Template
    Run `nix develop` to enter the dev shell.
  '';
}
