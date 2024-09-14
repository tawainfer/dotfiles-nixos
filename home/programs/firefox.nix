{username, ...}: {
  programs = {
    firefox = {
      enable = true;
      profiles.${username} = {
        isDefault = true;
        settings = {
          "intl.accept_languages" = "ja, en-US, en";
          "intl.locale.requested" = "ja, en-US";
          "ui.key.menuAccessKey" = 0;
          "ui.key.menuAccessKeyFocuses" = false;
        };
      };
    };
  };
}
