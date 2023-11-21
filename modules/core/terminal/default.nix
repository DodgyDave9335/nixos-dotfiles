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
     programs.vim.enable = true;
   };

   # ---- System Configuration ----

   environment.systemPackages = with pkgs; [
     alacritty
     btop
     nitch
     neofetch
     vim
   ];
}
