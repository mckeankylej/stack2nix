with import <nixpkgs> { };

haskell.lib.buildStackProject {
  name = "stack2nix";
  ghc = haskell.packages.ghc7103.ghc;
  shellHook = "export SSL_CERT_FILE=${cacert}/etc/ssl/certs/ca-bundle.crt";
  buildInputs =
    [ cabal-install
      git
      ncurses ];
}
