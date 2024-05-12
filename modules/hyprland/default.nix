{ hyprland, pkgs, username, ... }:
#let
#  hyprNvidia = {
#    "enabled" = [ (import ./nvidia.nix) ];
#    "disabled" = [ ];
#    };
#in
{
  imports = [
    hyprland.nixosModules.default
    ./config
    ./waybar
    ./rofi
  ];
  
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  
  environment.systemPackages = with pkgs; [ 
    swww
    grim
    slurp
    wl-clipboard
    xdg-utils
  ];
  
  programs.hyprland.enable = true;

}

