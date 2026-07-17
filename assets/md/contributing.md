# Contributing

This project follows [GitHub Flow](https://docs.github.com/en/get-started/using-github/github-flow). All contributions must be made via pull requests against the `main` branch.

## Development Shell

```bash
git clone https://github.com/nixcafe/develop-templates.git
cd develop-templates
nix develop
```

The dev shell provides `nixfmt`, `deadnix`, and `statix` with [git-hooks](https://github.com/cachix/git-hooks.nix) enabled. Formatting and linting run automatically on every commit.

## Creating a Feature Branch

```bash
git checkout -b feat/my-new-template
```

## Adding a New Nix Template

1. Create a repository under [nixcafe-develop](https://github.com/nixcafe-develop) with your template files (a standard `flake.nix` + `flake.lock`)
2. Add the repository as a flake input in `flake.nix`:

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
    # Template Name — Nix Development Environment
    Run `nix develop` to enter the dev shell.
  '';
}
```

4. Run git-hooks checks manually if needed:

```bash
nix flake check
```

5. Open a pull request to the `main` branch. All PRs require at least one approving review and must pass CI checks before merging.

## CI/CD (GitHub Actions)

### On Pull Request

Git hooks checks (`nixfmt`, `deadnix`, `statix`) run automatically on all PRs.

### On Push to Main

The Nix flake is automatically published to [FlakeHub](https://flakehub.com) as `nixcafe/develop-templates` with rolling versioning. This ensures flakes consuming these templates are not affected by GitHub API rate limits.

## Branch Protection

The `main` branch is protected:

* Pull request reviews are required (at least 1 approval)
* Status checks must pass before merging
* Stale reviews are dismissed when new commits are pushed

All development happens on feature branches and is merged to `main` via pull requests.
