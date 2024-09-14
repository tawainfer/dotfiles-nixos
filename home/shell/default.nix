{pkgs, ...}: {
  imports = [
    ./alacritty.nix
  ];

  home.packages = with pkgs; [
    alejandra
    deadnix
    statix
  ];

  home.sessionVariables = {
    EDITOR = "neovim";
    BROWSER = "firefox";
    TERMINAL = "alacritty";
  };
}
