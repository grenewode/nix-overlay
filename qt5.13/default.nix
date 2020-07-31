{ git, perl, python, stdenv, bison, gperf, ruby, icu }:
stdenv.mkDerivation {
  src = builtins.fetchTarball {
    url = "https://download.qt.io/archive/qt/5.13/5.13.2/single/qt-everywhere-src-5.13.2.tar.xz ";
    sha256 = "026y0pfc17wfzav01521pd43h4r259arx9v463vg8hdy6qsjgs2m";
  };
}
