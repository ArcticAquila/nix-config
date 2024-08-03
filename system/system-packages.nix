{ config, pkgs, ... }:

{
    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
      #   vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
      #   wget

      distrobox

      pkgs.gnupg
      
      pinentry
      pkgs.pinentry-tty
      pkgs.pinentry-curses
      pkgs.pinentry-qt

      kdePackages.partitionmanager
      kdePackages.kleopatra

      temurin-bin
      temurin-jre-bin-17

      qemu_full

    ];
}
