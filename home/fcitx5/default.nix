{pkgs, ...}: {
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-nord
    ];
  };

  xdg.configFile."fcitx5/profile" = {
    force = true;
    text = ''
      [Groups/0]
      # Group Name
      Name=MyGroup
      # Layout
      Default Layout=us
      # Default Input Method
      DefaultIM=mozc

      [Groups/0/Items/0]
      # Name
      Name=keyboard-us
      # Layout
      Layout=

      [Groups/0/Items/1]
      # Name
      Name=mozc
      # Layout
      Layout=

      [GroupOrder]
      0=MyGroup
    '';
  };

  xdg.configFile."fcitx5/config" = {
    force = true;
    text = ''
      [Hotkey]
      # トリガーキーを押すたびに切り替える
      EnumerateWithTriggerKeys=True
      # 一時的に第1入力メソッドに切り替える
      AltTriggerKeys=
      # 次の入力メソッドに切り替える
      EnumerateForwardKeys=
      # 前の入力メソッドに切り替える
      EnumerateBackwardKeys=
      # 切り替え時は第1入力メソッドをスキップする
      EnumerateSkipFirst=False

      [Hotkey/TriggerKeys]
      0=Alt+grave
      1=Zenkaku_Hankaku
      2=Hangul

      [Hotkey/EnumerateGroupForwardKeys]
      0=Super+space

      [Hotkey/EnumerateGroupBackwardKeys]
      0=Shift+Super+space

      [Hotkey/ActivateKeys]
      0=Hangul_Hanja

      [Hotkey/DeactivateKeys]
      0=Hangul_Romaja

      [Hotkey/PrevPage]
      0=Up

      [Hotkey/NextPage]
      0=Down

      [Hotkey/PrevCandidate]
      0=Shift+Tab

      [Hotkey/NextCandidate]
      0=Tab

      [Hotkey/TogglePreedit]
      0=Control+Alt+P

      [Behavior]
      # デフォルトで有効にする
      ActiveByDefault=False
      # 入力状態を共有する
      ShareInputState=No
      # アプリケーションにプリエディットを表示する
      PreeditEnabledByDefault=True
      # 入力メソッドを切り替える際に入力メソッドの情報を表示する
      ShowInputMethodInformation=True
      # フォーカスを変更する際に入力メソッドの情報を表示する
      showInputMethodInformationWhenFocusIn=False
      # 入力メソッドの情報をコンパクトに表示する
      CompactInputMethodInformation=True
      # 第1入力メソッドの情報を表示する
      ShowFirstInputMethodInformation=True
      # デフォルトのページサイズ
      DefaultPageSize=5
      # XKB オプションより優先する
      OverrideXkbOption=False
      # カスタム XKB オプション
      CustomXkbOption=
      # Force Enabled Addons
      EnabledAddons=
      # Force Disabled Addons
      DisabledAddons=
      # Preload input method to be used by default
      PreloadInputMethod=True
    '';
  };

  xdg.configFile."fcitx5/conf/xim.conf" = {
    force = true;
    text = ''
      # XIM で On The Spot スタイルを使う（再起動が必要）
      UseOnTheSpot=True
    '';
  };
}
