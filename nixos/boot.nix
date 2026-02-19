{ config, lib, pkgs, ... }:

{
   boot.blacklistedKernelModules = [ "nouveau" "nvidia" "nvidia_drm" "nvidia_modeset" ];

  # Use the systemd-boot EFI boot loader.
  #  boot.loader.systemd-boot.enable = true;
   boot.loader.efi.canTouchEfiVariables = true;
   boot.loader.efi.efiSysMountPoint = "/boot";
   boot.loader.grub.device = "nodev";
   boot.loader.grub.efiSupport = true;
   
}