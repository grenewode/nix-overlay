{ buildGoModule
, fetchFromGitHub
, pkg-config
, libsecret
, lib
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

  # subPackages = [ "cmd/Desktop-Bridge" ];

  vendorSha256 = "0w5gf1gn7qgw2m8rxlzdlx0ls8hcsvchh22d2ksbyz276qslbyla";

  buildPhase = ''
    mkdir -p $out

    go install \
      -tags="pmapi_prod nogui" \
      -ldflags="-X main.Version=${version} -X main.Revision=${src.rev}" \
      -v -p $NIX_BUILD_CORES \
      ./cmd/Desktop-Bridge 2>&1
  '';

  # buildFlags =
  #   ''-tags=pmapi_prod,nogui -ldflags=-Xmain.Version=1.2.7-git,-Xmain.Revision=${src.rev} ''
  # ;

  # buildFlagsArray = [
  #   "-tags \"pmapi_prod nogui\""
  #   "-ldflags \"-X main.Version=1.2.7-git -X main.Revision=${src.rev}\""
  # ];
}
