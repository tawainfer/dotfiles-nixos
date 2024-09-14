{...}: {
  imports = [
    ../../modules/system.nix
    ../../modules/fcitx5.nix
    ../../modules/firefox.nix
    ../../modules/i3.nix
    ./hardware-configuration.nix
  ];

  boot.loader = {
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = false;
      useOSProber = true;
    };
  };

  networking = {
    hostName = "nfg70";
    networkmanager.enable = true;
  };

  system.stateVersion = "24.05";
}
