with import <nixpkgs> {};

let
  pythonPackages = python3Packages;
in pkgs.mkShell rec {
  name = "impurePythonEnv";
  buildInputs = [
    pythonPackages.python
    pythonPackages.tkinter
    pythonPackages.pyserial
    pythonPackages.numpy
  ];
}
