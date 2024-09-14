{pkgs, ...}: {
  environment.pathsToLink = ["/libexec"];
  services.displayManager.defaultSession = "none+i3";
  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
    };

    displayManager = {
      lightdm.enable = true;
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        dmenu
        dunst
        picom
        feh
        acpi
        arandr
        xorg.xdpyinfo
      ];
    };

    xkb.layout = "us";
    xkb.options = "caps:escape";
    autoRepeatDelay = 250;
    autoRepeatInterval = 15;
  };
  console.useXkbConfig = true;

  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
  ];
  services.gvfs.enable = true;
  services.tumbler.enable = true;
}
