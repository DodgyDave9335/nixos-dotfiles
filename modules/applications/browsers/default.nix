{ pkgs, home-manager, username, ... }:
{
  #----- Home Manager Config -----
  home-manager.users.${username} = { pkgs, ... }: {
  
    home.packages = with pkgs; [
      librewolf
    ];

    home.sessionVariables = {
      MOZ_ENABLE_WAYLAND = 1;
    };
  };

  #----- System Configuration -----
}
