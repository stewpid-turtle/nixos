{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./programs.nix
      ./users.nix
      ./boot.nix
      ./networking.nix
      ./fonts.nix
    ];

   services.pipewire = { #sound
     enable = true;
     pulse.enable = true;
   };

  services.libinput.enable = true; #touchpad
  services.displayManager.ly.enable = true; #login
  programs.firefox.enable = true; #firefox
  programs.hyprland.enable = true; 
  programs.hyprlock.enable = true;

  # Configure keymap in X11
  # services.xserver.xkb.layout = "us";
  # services.xserver.xkb.options = "eurosign:e,caps:escape";

  #services.printing.enable = true;


  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # Do NOT change this value.
  system.stateVersion = "25.11"; 

}