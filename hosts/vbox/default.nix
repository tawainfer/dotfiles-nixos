{...}: {
  imports = [
    ../../modules/system.nix
    ../../modules/firefox.nix
    ../../modules/fcitx5.nix
    ../../modules/i3.nix
    ../../modules/steam.nix
    ./hardware-configuration.nix
  ];

  boot.loader = {
    efi.canTouchEfiVariables = true;
    systemd-boot.enable = true;
  };

  networking = {
    hostName = "vbox";
    networkmanager.enable = true;
  };

  virtualisation.virtualbox.guest.enable = true;

  system.stateVersion = "24.05";
}
