# Contributing

This project follows [GitHub Flow](https://docs.github.com/en/get-started/using-github/github-flow). Make changes on a feature branch and open a pull request against the `main` branch.

## Development Shell

```bash
git clone https://github.com/nixcafe/develop-templates.git
cd develop-templates
nix develop
```

The dev shell provides `nixfmt`, `deadnix`, and `statix`. It also installs the [git-hooks](https://github.com/cachix/git-hooks.nix) hooks, so formatting and linting run when you commit.

Run the checks manually with:

```bash
nix flake check
```

## Creating a Feature Branch

```bash
git checkout -b feat/my-new-template
```

## Adding a New Nix Template

1. Create a repository under [nixcafe-develop](https://github.com/nixcafe-develop) with a `flake.nix` and the project files that the template should copy. The existing template repositories do not include a `flake.lock`.

2. Add the repository as a flake input in the root `flake.nix`:

```nix
templates-<name> = {
  url = "github:nixcafe-develop/<repo-name>";
  flake = false;
};
```

3. Create `templates/<name>/default.nix`:

```nix
{ inputs, ... }:
{
  description = "Description of your template";
  path = "${inputs.templates-<name>}";
  welcomeText = ''
    # Template Name
    Run `nix develop` to enter the dev shell.
  '';
}
```

The directory name under `templates/` becomes the template name. For example, `templates/rust/default.nix` is used with `nix flake init -t beans#rust`.

4. Run the checks:

```bash
nix flake check
```

5. Open a pull request against `main`.

For a template that reads from another flake input instead of a `templates-*` input, follow the approach used by `templates/purr/default.nix` and `templates/purr-flake-parts/default.nix`. Both reference directories under `inputs.purr`.

## CI

The workflow in `.github/workflows/flake-check.yml` runs `nix flake check` on pull requests to `main`.

The workflow in `.github/workflows/flakehub-publish-rolling.yml` publishes each push to `main` to [FlakeHub](https://flakehub.com) as `nixcafe/develop-templates` with rolling versioning.

## Branch Protection

The `main` branch is protected:

* Pull requests require at least one approval.
* Status checks must pass before merging.
* New commits dismiss stale reviews.

## Code Style

* Nix: follow `nixfmt` output.
* No unused bindings (`deadnix`).
* `statix` warnings must be clean.
* Use `_:` for empty patterns, except where the spread is intentional.
