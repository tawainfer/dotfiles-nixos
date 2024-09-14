{username, ...}: {
  programs = {
    firefox = {
      enable = true;
      profiles.${username} = {
        isDefault = true;
        settings = {
          "intl.accept_languages" = "ja, en-US, en";
          "ui.key.menuAccessKey" = 0;
          "ui.key.menuAccessKeyFocuses" = false;
        };
      };
    };
  };
}
