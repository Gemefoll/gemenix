{
  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    enableNushellIntegration = true;
    shellWrapperName = "y";

    settings = {
      opener = {
        edit = [
          {
            run = "zeditor \"$@\"";
          }
        ];
        open = [
          {
            run = "zen \"$@\"";
            orphan = true;
          }
        ];
        play = [
          {
            run = "mpv \"$@\"";
            orphan = true;
          }
        ];
      };
      open = {
        rules = [
          {
            mime = "text/*";
            use = "edit";
          }
          {
            mime = "application/pdf";
            use = "open";
          }
          {
            mime = "audio/*";
            use = "play";
          }
          {
            mime = "video/*";
            use = "play";
          }
        ];
      };
    };
  };
}
