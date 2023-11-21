{ home-manager, username, ... }:
{
  home-manager.users.${username} =  { ... }: {
    home.file = {
      ".config/alacritty/alacritty.yml".text = ''
background #232136
background_opacity 1.0
      '';     
    };
  };
}
