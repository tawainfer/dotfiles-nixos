{
  pkgs,
  lib,
  username,
  ...
}: {
  users.users.${username} = {
    isNormalUser = true;
    description = username;
    extraGroups = ["networkmanager" "wheel"];
  };
  nix.settings.trusted-users = [username];

  nix.settings = {
    experimental-features = ["nix-command" "flakes"];
    builders-use-substitutes = true;
  };

  nix.gc = {
    automatic = lib.mkDefault true;
    dates = lib.mkDefault "weekly";
    options = lib.mkDefault "--delete-older-than 7d";
  };

  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Asia/Tokyo";

  i18n.defaultLocale = "ja_JP.UTF-8";
  # i18n.extraLocaleSettings = {
  # LC_ADDRESS = "ja_JP.UTF-8";
  # LC_IDENTIFICATION = "ja_JP.UTF-8";
  # LC_MEASUREMENT = "ja_JP.UTF-8";
  # LC_MONETARY = "ja_JP.UTF-8";
  # LC_NAME = "ja_JP.UTF-8";
  # LC_NUMERIC = "ja_JP.UTF-8";
  # LC_PAPER = "ja_JP.UTF-8";
  # LC_TELEPHONE = "ja_JP.UTF-8";
  # LC_TIME = "ja_JP.UTF-8";
  # };

  services.printing.enable = true;

  fonts = {
    packages = with pkgs; [
      noto-fonts-cjk
      noto-fonts-emoji
      plemoljp-nf
      (nerdfonts.override {fonts = ["FiraCode" "NerdFontsSymbolsOnly"];})
      papirus-nord
    ];

    enableDefaultPackages = false;

    fontconfig.defaultFonts = {
      serif = ["Noto Serif CJK JP" "Noto Color Emoji"];
      sansSerif = ["Noto Sans CJK JP" "Noto Color Emoji"];
      monospace = ["PlemolJP Console NF Medium" "Noto Color Emoji"];
      emoji = ["Noto Color Emoji"];
    };
  };

  programs.dconf.enable = true;

  networking.firewall.enable = false;

  services.openssh = {
    enable = true;
    settings = {
      X11Forwarding = true;
      PermitRootLogin = "no"; # disable root login
      PasswordAuthentication = true; # disable password login
    };
    openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    vim
    neovim
    wget
    curl
    git
    scrot
    neofetch
    xfce.thunar
  ];

  sound.enable = true;
  hardware.pulseaudio.enable = false;
  services.power-profiles-daemon.enable = true;
  security.polkit.enable = true;

  services = {
    dbus.packages = [pkgs.gcr];

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
  };
}
