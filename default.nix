self: super: let
  unstable = import (
    builtins.fetchGit {
      url = "http://jupiter.lan/gitea/grenewode/nixpkgs.git";
      rev = "938e7c71ffd0e959813003d8235db1495d6e12c1";
      ref = "qt5.13";
    }
  ) {};
  libsForQt5 = unstable.libsForQt513;
in
{
  protonmail-bridge-bin = libsForQt5.callPackage ./protonmail-bridge-bin {};
  protonmail-bridge = self.callPackage ./protonmail-bridge {};
  qt513 = self.callPackage ./qt5.13 {};
}
