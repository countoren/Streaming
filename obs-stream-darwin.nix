{ pkgs ? import <nixpkgs>{} 
, config ? {}
}:
let 

  configFile = pkgs.writeText "obs" '''';
  installConfig = pkgs.writeShellScriptBin "obs-installConfig" ''
    cp 
  '';
in 
import ../mkDarwinApp.nix { inherit pkgs; } { 
  name = "OBS";
  url = "https://github.com/obsproject/obs-studio/releases/download/26.1.2/obs-mac-26.1.2.dmg";
  sha256="0p885ynyczi6lrm59j6kccmcjbv3wpb49i1yg86x4prwyajm5f22"; 
}
