{ config, pkgs, ... }:

{
    programs.gnupg.agent.pinentryPackage = pkgs.pinentry-qt;
    programs.gnupg.agent.enable = true;
}
