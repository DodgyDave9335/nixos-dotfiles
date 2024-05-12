{ pkgs, home-manager, username, ... }:
{  
   imports = [
    ./bash
    ./cava
    ./fonts
    ./alacritty
    ./nvim
    ./starship
   ];

   # ---- Home Configuration ----
   home-manager.users.${username} = { pkgs, ... }: {
     programs.git.enable = true;
   };

   # ---- System Configuration ----

   environment.systemPackages = with pkgs; [
     btop
     nitch
     neofetch
     vim
     ranger
   ];
}
