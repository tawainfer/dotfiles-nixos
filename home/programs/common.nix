{pkgs, ...}: {
  home.packages = with pkgs; [
    zip
    unzip

    docker-compose

    nodejs
    nodePackages.npm
    nodePackages.pnpm
    yarn
  ];

  programs = {
    jq.enable = true;
    ssh.enable = true;
    aria2.enable = true;
  };
}
