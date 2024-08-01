{ config, pkgs, ... }:

{
  boot.loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi"; # ← use the same mount point here.
      };
      grub = {
        efiSupport = true;
        #efiInstallAsRemovable = true; # in case canTouchEfiVariables doesn't work for your system
        device = "nodev";
      };
    };

  boot.extraModprobeConfig = ''
  options kvm_amd nested=1
  
  options rtw89_pci disable_aspm_l1=y disable_aspm_l1ss=y
  options rtw89pci disable_aspm_l1=y disable_aspm_l1ss=y
  options rtw89_core disable_ps_mode=y
  options rtw89core disable_ps_mode=y
'';
}