{
  description = "Floxpkgs/Project Template";
  nixConfig.bash-prompt = "[flox] \\[\\033[38;5;172m\\]λ \\[\\033[0m\\]";
  inputs.floxpkgs.url = "github:flox/floxpkgs";

  # Declaration of external resources
  # =================================
   inputs.sbt.url = "github:zaninime/sbt-derivation";
  # =================================

  outputs = args @ {floxpkgs, ...}: floxpkgs.project args (_: {});
}
