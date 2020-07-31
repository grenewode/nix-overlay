{ stdenv, go, fetchFromGitHub }:
stdenv.mkDerivation rec {
  pname = "protonmail-bridge";
  version = "1.2.7-live.1";

  nativeBuildInputs = [ go ];

  src = fetchFromGitHub {
    owner = "ProtonMail";
    repo = "proton-bridge";

    rev = "v${version}";
    sha256 = "0m3d2f16zrgs8bsa03azy36511vws6jvw2yy33vhypwikskrgx0x";
  };

  buildPhase = ''
    export GOCACHE=`mktemp -d`
    mkdir -p $GOCACHE

    go build --tags nogu --tags nogui -o Desktop-Bridge cmd/Desktop-Bridge/main.go
  '';

}
