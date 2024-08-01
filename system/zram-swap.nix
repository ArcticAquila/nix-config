{ config, pkgs, ... }:

{
  zramSwap.enable = true;
  zramSwap.priority = 32767;
}
