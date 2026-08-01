{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    zola
    just
  ];

  shellHook = ''
    echo "Reticle theme dev shell loaded"
    echo "• Serve blog:  just serve-blog"
    echo "• Serve docs:  just serve-docs"
    echo "• Serve book:  just serve-book"
    echo "• Build all:   just build"
  '';
}
