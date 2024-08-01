{ config, pkgs, ... }:

{
# Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.franklin = {
    isNormalUser = true;
    description = "Aqua";
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd" ];
    packages = with pkgs; [
      kdePackages.kate
      pkgs.google-chrome
      telegram-desktop
      vscode
      pkgs.discord
      pkgs.jetbrains-toolbox
    #  thunderbird
    ];
  };
}