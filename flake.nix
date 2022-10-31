{
  description = "My personal NUR";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.05";
    oxalica.url = "github:oxalica/rust-overlay";
  };

  outputs = { self, nixpkgs, oxalica }:
    let
      overlays = [ (import oxalica) ];
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        inherit overlays;
      };
    in
    {
      packages.x86_64-linux.wasm-server-runner = pkgs.callPackage ./wasm-server-runner.nix { };
    };
}
