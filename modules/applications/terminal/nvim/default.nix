{ pkgs, eriixvim,  ... }:
{
  environment.systemPackages = with pkgs; [
    neovim
  ];
}
