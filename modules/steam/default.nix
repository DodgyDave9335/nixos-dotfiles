{ pkgs, username, ... }:
{  
  users.users.${username} = {
    packages = with pkgs; [
      discord
    ];
  };

  programs = {
    steam.enable = true;  
  };
}
