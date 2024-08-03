{ config, pkgs, ... }:

{
# Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.franklin = {
    isNormalUser = true;
    description = "Aqua";
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd" ];
    packages = with pkgs; [
      pkgs.google-chrome

      telegram-desktop
      pkgs.discord

      vscode
      pkgs.jetbrains-toolbox

      pkgs.prismlauncher
      
      obs-studio
    ];
  };
}
