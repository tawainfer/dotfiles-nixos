_: let
  font = "PlemolJP Console NF";
in {
  programs.alacritty = {
    enable = true;
    settings = {
      colors = {
        primary = {
          background = "#2e3440";
          foreground = "#d8dee9";
          dim_foreground = "#a5abb6";
        };

        cursor = {
          text = "#2e3440";
          cursor = "#d8dee9";
        };

        vi_mode_cursor = {
          text = "#2e3440";
          cursor = "#d8dee9";
        };

        selection = {
          text = "CellForeground";
          background = "#4c566a";
        };

        search.matches = {
          foreground = "CellBackground";
          background = "#88c0d0";
        };

        bright = {
          black = "#4c566a";
          red = "#bf616a";
          green = "#a3be8c";
          yellow = "#ebcb8b";
          blue = "#81a1c1";
          magenta = "#b48ead";
          cyan = "#8fbcbb";
          white = "#eceff4";
        };

        normal = {
          black = "#3b4252";
          red = "#bf616a";
          green = "#a3be8c";
          yellow = "#ebcb8b";
          blue = "#81a1c1";
          magenta = "#b48ead";
          cyan = "#88c0d0";
          white = "#e5e9f0";
        };

        dim = {
          black = "#373e4d";
          red = "#94545d";
          green = "#809575";
          yellow = "#b29e75";
          blue = "#68809a";
          magenta = "#8c738c";
          cyan = "#6d96a5";
          white = "#aeb3bb";
        };
      };

      window.padding = {
        x = 5;
        y = 5;
      };
      scrolling.history = 10000;

      font = {
        size = 12;

        normal = {
          family = font;
          style = "Medium";
        };

        bold = {
          family = font;
          style = "Bold";
        };

        italic = {
          family = font;
          style = "Italic";
        };
      };

      hints.enabled = [
        {
          command = "";
          hyperlinks = true;
          mouse.enabled = false;
        }
      ];
    };
  };
}
