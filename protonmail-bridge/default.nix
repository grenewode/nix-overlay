{ buildGoModule, fetchFromGitHub }:
buildGoModule rec {
  pname = "protonmail-bridge";
  version = "1.2.7-live.1";

  src = fetchFromGitHub {
    owner = "ProtonMail";
    repo = "proton-bridge";

    rev = "v${version}";
    sha256 = "0m3d2f16zrgs8bsa03azy36511vws6jvw2yy33vhypwikskrgx0x";
  };
}
