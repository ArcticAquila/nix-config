{ config, pkgs, ... }:

{
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi"; # ← use the same mount point here.
  
  boot.loader.grub.efiSupport = true;
  #boot.loader.grub.efiInstallAsRemovable = true; # in case canTouchEfiVariables doesn't work for your system
  boot.loader.grub.device = "nodev";

  boot.extraModprobeConfig = ''
  # AMD KVM Nested Virtualization
  options kvm_amd nested=1
  
  # Realtek RTW89
  options rtw89_pci disable_aspm_l1=y disable_aspm_l1ss=y
  options rtw89pci disable_aspm_l1=y disable_aspm_l1ss=y
  options rtw89_core disable_ps_mode=y
  options rtw89core disable_ps_mode=y
'';
}