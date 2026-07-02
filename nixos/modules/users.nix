{ pkgs, user, ... }: {
  users.users.${user} = {
    isNormalUser = true;
    extraGroups = [
      "audio"
      "docker"
      "input"
      "networkmanager"
      "wheel"
    ];
  };
  users.defaultUserShell = pkgs.fish;
}
