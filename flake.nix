{
  inputs = {
    # Submodules are supported in nix 2.27.0
    self.submodules = true;
    # nixos-unstable (use flakehub to avoid github api limit)
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1.*.tar.gz";

    snowfall-lib = {
      url = "https://flakehub.com/f/snowfallorg/lib/*.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # see: https://github.com/cachix/git-hooks.nix
    pre-commit-hooks = {
      url = "https://flakehub.com/f/cachix/git-hooks.nix/0.1.*.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs:
    inputs.snowfall-lib.mkFlake {
      inherit inputs;
      src = ./.;

      templates = {
        java.description = "Java development environment";
        kotlin.description = "Kotlin development environment";
        nix.description = "Nix development environment";
        nix-config.description = "NixOS configuration";
        node.description = "Node.js development environment";
        rust.description = "Rust development environment";
        secrets.description = "Secrets file management";
      };

      defaultTemplate = inputs.self.templates.nix;
    };
}
