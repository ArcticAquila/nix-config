{ config, pkgs, ... }:

{
    # Enable sound with pipewire.
    hardware.pulseaudio.enable = false;
    security.rtkit.enable = true;
    
    services.pipewire.enable = true;
    services.pipewire.alsa.enable = true;
    services.pipewire.alsa.support32Bit = true;
    services.pipewire.pulse.enable = true;

    # If you want to use JACK applications, uncomment this
    #services.pipewire.jack.enable = true;
}
