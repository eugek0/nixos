{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        nixosdir = "~/nixos";
      in {
        cls = "clear";

        nv = "nvim";
        nvconf = "cd ~/.config/nvim && nvim";

        nixconf = "cd ${nixosdir} && nvim";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "af-magic"; # blinks is also really nice
    };
  };
}
