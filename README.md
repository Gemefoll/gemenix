# gemenix

Personal NixOS and Home Manager flake configuration for my machines.

## Structure

```
├── flake.nix              # Entry point — defines inputs & outputs
├── nixos/
│   ├── configuration.nix  # NixOS entry (imports modules)
│   ├── hardware-configuration.nix  # Auto-generated hardware config
│   └── modules/           # NixOS modules split by concern
├── home-manager/
│   ├── home.nix           # Home Manager entry
│   ├── home-packages.nix  # User packages (GUI, CLI, dev)
│   └── modules/           # Home Manager modules
└── wallpaper.png          # Desktop wallpaper
```

## Usage

### Build and switch

```bash
# NixOS
sudo nixos-rebuild switch --flake ~/gemenix

# Home Manager
home-manager switch --flake ~/gemenix
```

### Update inputs

```bash
nix flake update
```

## Modules

| Module | Concern |
|--------|---------|
| `nixos/modules/system.nix` | Bootloader, kernel, timezone, graphics |
| `nixos/modules/nvidia.nix` | NVIDIA driver settings |
| `nixos/modules/services.nix` | PipeWire, Jellyfin, Bluetooth, Docker, display manager |
| `nixos/modules/programs.nix` | Steam, Hyprland, Niri, Fish |
| `nixos/modules/networking.nix` | Hostname, NetworkManager, firewall |
| `nixos/modules/security.nix` | PAM login limits |
| `nixos/modules/nix.nix` | Nix settings, CUDA, substituters |
| `nixos/modules/users.nix` | User account and shell |

## License

MIT
