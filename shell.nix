# shell.nix

{ mach-nix, nixpkgs ? (import <nixpkgs> { })}:

with nixpkgs;

let
  myEnv = mach-nix.mkPythonShell {
    requirements = ''
      ipython
      requests
      '';
  };
in myEnv
