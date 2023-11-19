{ pkgs, ... }:
{
  boot.loader = {
  systemd-boot.enable = false;
   efi = {
    canTouchEfiVariables  = true;
    efiSysMountPoint      = "/boot";
   };
   grub = {
    enable     = true;
    devices    = [ "nodev" ];
    efiSupport = true;
   };
  };
}
