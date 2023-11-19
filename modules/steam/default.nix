{ pkgs, username, ... }:
{  
  users.users.${username} = {
    packages = with pkgs; [ 
    ];
  };

  programs = {
    steam.enable = true;  
  };
}
