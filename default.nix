{ pkgs ? import <nixpkgs> {} }:

pkgs.buildGoPackage rec {
  name = "sponsors-api-${version}";
  version = "0.1";
  goPackagePath = "github.com/tj/sponsors-api";  # Incomplete
  src = ./.;
  goDeps = ./deps.nix;
}
