# nix/modules/darwin.nix — auto-generated from image.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.image; in {
  options.services.image = {
    enable = lib.mkEnableOption "image";
    package = lib.mkOption { type = lib.types.package; default = pkgs.image or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
