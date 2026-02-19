{ config, lib, pkgs, ... }:

{
 environment.systemPackages = with pkgs; [
	vim
	wget
	hyprpaper
	kitty
	waybar
	fastfetch
	wofi
	kdePackages.dolphin
	slurp
	gcc
	grim
	wlogout
	pavucontrol
	git


 ];

}