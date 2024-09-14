{...}: {
  imports = [
    ../../home/core.nix

    ../../home/fcitx5
    ../../home/i3
    ../../home/programs
    ../../home/shell
  ];

  programs.git = {
    userName = "tawainfer";
    userEmail = "tawainfer@gmail.com";
  };
}
