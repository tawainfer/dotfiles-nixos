_: {
  programs.firefox = {
    enable = true;
    languagePacks = ["ja" "en-US"];
    preferences = {
      "intl.locale.requested" = "ja, en-US";
    };
  };
}
