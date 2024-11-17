{ pkgs, lib, ... }: {
  imports = [
    ./modules/zsh.nix
    ./modules/git.nix
  ];

  home = {
    username = "eugene";
    homeDirectory = /home/eugene;
    stateVersion = "24.05";

    activation.cloneNvchadConfig = lib.mkAfter ''
      if [ ! -d "$HOME/.config/nvim/.git" ]; then
        ${pkgs.git}/bin/git clone --depth 1 https://github.com/eugek0/nvchad.git $HOME/.config/nvim
      fi
    '';
  };
}
