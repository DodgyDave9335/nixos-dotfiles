{ pkgs, home-manager, username, ... }:
{
  imports = [ 
    ./browsers
  ];
  home-manager.users.${username} = { pkgs, ... }: {
    home.packages = with pkgs; [
      discord
     ];
  };
}
