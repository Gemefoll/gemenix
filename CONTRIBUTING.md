# Contributing

This is a personal configuration, but suggestions and fixes are welcome.

## Guidelines

- **Keep modules focused** — each NixOS module should cover one concern (e.g. services, networking, hardware).
- **Avoid duplication** — settings that apply globally belong in `nixos/modules/`, not in `home-manager/`.
- **Format with nixfmt** — run `nixfmt` on any `.nix` file before committing.
- **Alphabetical order** — packages in `home-packages.nix` must be sorted by name within each category.
- **Verify before pushing** — run `nix flake check` to catch errors early.
- **No secrets** — never commit tokens, passwords, or private keys. Use environment variables or `sops-nix` instead.

## Structure

- **`flake.nix`** — only the entry point; all configuration lives in `nixos/` and `home-manager/`.
- **`nixos/modules/`** — system-level configuration, split by concern.
- **`home-manager/modules/`** — user-level configuration (shell, editors, WM, etc.).
- **`home-packages.nix`** — packages grouped by category (GUI, CLI, dev).

## PR process

1. Fork the repo (if external) or create a branch.
2. Make your changes.
3. Run `nix flake check` to verify.
4. Open a pull request with a clear description.
