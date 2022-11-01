{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = [ 
      pkgs.go
    ];
    shellHook = let
      PROJECT_ROOT = builtins.getEnv "PWD";
    in
    ''
      export GOPATH="${PROJECT_ROOT}/go"
      export PATH="$GOPATH/bin:$PATH"
    '';
}
