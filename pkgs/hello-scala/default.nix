# Replace "stdenv" with the namespace or name of your language's builder
{ self, inputs, pkgs, sbt, jre, lib, openjdk, scalafmt }:

inputs.sbt.lib.mkSbtDerivation {
  inherit pkgs;
  pname = "hello-scala";
  version = "0.0.0";
  src = self; # + "/src";
  depsSha256 = "sha256-RQvxbSN0QiQ0HLKx9fnk3qTgHJSLn7GS7Tu/A4NcEq4=";
  #depsSha256 = lib.fakeSha256;
  buildPhase = ''
    sbt assembly
  '';
  installPhase = ''
    mkdir -p $out
    cp -a target/* -t $out
  '';
  propagatedBuildInputs = [ openjdk sbt scalafmt ];
}
