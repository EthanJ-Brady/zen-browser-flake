{
  description = "Nix flake for Zen Browser";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };

      zen = pkgs.appimageTools.wrapType2 {
        pname = "zen";
        version = "1.7.4b";
        src = pkgs.fetchurl {
          url = "https://github.com/zen-browser/desktop/releases/download/1.7.4b/zen-x86_64.AppImage";
          sha256 = "sha256-Ub7sQEP9W8kD311/UOkzdZ1DJ4qjgBXyJmndLiA4Vl4=";
        };
      };
    in
    {
      packages.${system}.zen = zen;
    };
}
