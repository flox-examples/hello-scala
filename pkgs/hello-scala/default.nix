# Replace "stdenv" with the namespace or name of your language's builder
{ inputs, pkgs }:

inputs.sbt.lib.mkSbtDerivation {
  inherit pkgs;
  pname = "hello-scala";
  version = "0.0.0";
  src = ../..; # + "/src";
  depsSha256 = "sha256-ghEB1ARA7w8yocIQoPUphVYhD6yxdY1LonVdR+G8swg=";
}
