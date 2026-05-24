# nix/modules/home-manager.nix — auto-generated from image.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.image; in {
  options.programs.image = {
    enable = lib.mkEnableOption "image";
    package = lib.mkOption { type = lib.types.package; default = pkgs.image or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
