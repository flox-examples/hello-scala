# Replace "stdenv" with the namespace or name of your language's builder
{ self, stdenv, pkgs }:
let
  repository = builtins.fetchTarball {
    url = "https://github.com/zaninime/sbt-derivation/archive/master.tar.gz";
    sha256 = "sha256:0zmd48ivnzag1cfwl5qkmn603m3sgvgvjw2bjdbhhb2qjzdn29av";
  };

  sbt-derivation = import "${repository}/overlay.nix";
in import pkgs { overlays = [sbt-derivation]; }
# Replace "stdenv.mkDerivation" with your language's builder
pkgs.mkSbtDerivation {
  pname = "hello-scala";
  version = "0.0.0";
  src = self; # + "/src";
  depsSha256 = "";
}
