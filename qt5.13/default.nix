{ stdenv, gnumake }:
stdenv.mkDerivation rec {
  pname = "qt5.13";
  version = "5.13.2";

  buildInputs = [ gnumake ];

  src = builtins.fetchTarball {
    url = "https://download.qt.io/archive/qt/5.13/${version}/single/qt-everywhere-src-${version}.tar.xz";
    sha256 = "1kmy66svc2y1zkdnp2xg90zxxyw3pqx7bdyhgcpw6jpa5bsliyf2";
  };
}
