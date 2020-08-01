{ buildGoModule
, fetchFromGitHub
, pkg-config
, libsecret
}:
buildGoModule rec {
  pname = "protonmail-bridge";
  version = "1.2.7-live.1";

  nativeBuildInputs = [ pkg-config libsecret ];

  src = fetchFromGitHub {
    owner = "ProtonMail";
    repo = "proton-bridge";

    rev = "v${version}";
    sha256 = "0m3d2f16zrgs8bsa03azy36511vws6jvw2yy33vhypwikskrgx0x";
  };

  subPackages = [ "cmd/Desktop-Bridge" ];

  vendorSha256 = "0w5gf1gn7qgw2m8rxlzdlx0ls8hcsvchh22d2ksbyz276qslbyla";

  buildFlagsArray = [ "-tags='nogui'" ];
}
