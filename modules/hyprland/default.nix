{ hyprland, pkgs, nvidia_bool, username, ... }:
let
  hyprNvidia = {
    "enabled" = [ (import ./nvidia.nix) ];
    "disabled" = [ ];
    };
in
{
  imports = [
    hyprland.nixosModules.default
    ./config
    ./mako
    ./waybar
    ./wofi
  ] ++ (hyprNvidia.${nvidia_bool} or [ ]);
  
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  
  environment.systemPackages = with pkgs; [ 
    swww
    lxqt.lxqt-policykit
    grim
    slurp
    wl-clipboard
    xdg-utils
  ];
  
  programs.hyprland.enable = true;

  programs.dconf.enable = true;
  
  };
}

