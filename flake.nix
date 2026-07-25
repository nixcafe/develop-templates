{
  inputs = {
    # nixos-unstable (use flakehub to avoid github api limit)
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1.*.tar.gz";
    purr.url = "https://flakehub.com/f/nixcafe/purr/0.1.*.tar.gz";

    # see: https://github.com/cachix/git-hooks.nix
    git-hooks = {
      url = "https://flakehub.com/f/cachix/git-hooks.nix/0.1.*.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    templates-colmena-config = {
      url = "github:nixcafe-develop/colmena-config";
      flake = false;
    };
    templates-java = {
      url = "github:nixcafe-develop/java";
      flake = false;
    };
    templates-kotlin = {
      url = "github:nixcafe-develop/kotlin";
      flake = false;
    };
    templates-latex = {
      url = "github:nixcafe-develop/latex";
      flake = false;
    };
    templates-nix = {
      url = "github:nixcafe-develop/nix";
      flake = false;
    };
    templates-nix-config = {
      url = "github:nixcafe-develop/nix-config";
      flake = false;
    };
    templates-node = {
      url = "github:nixcafe-develop/node";
      flake = false;
    };
    templates-python = {
      url = "github:nixcafe-develop/python";
      flake = false;
    };
    templates-rust = {
      url = "github:nixcafe-develop/rust";
      flake = false;
    };
    templates-typst = {
      url = "github:nixcafe-develop/typst";
      flake = false;
    };
    templates-secrets = {
      url = "github:nixcafe-develop/nix-secrets";
      flake = false;
    };
  };

  outputs =
    inputs:
    inputs.purr.lib.mkFlake {
      inherit inputs;
      src = ./.;
    };
}
