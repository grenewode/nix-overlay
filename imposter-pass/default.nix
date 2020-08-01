{ rustPlatform, fetchFromGitHub }: rustPlatform.buildRustPackage rec {
  name = "imposter-pass";
  version = "0.3.0";

  src = fetchFromGitHub {
    owner = "grenewode";
    repo = name;

    rev = "v${version}";

    sha256 = "0kkrqb1by3gvpljw6jdq30x5s6wxi7xcsfaw85s6kgrxzp811qpd";
  };

  cargoSha256 = "11cxzymsn4qydw1zkp3awna35i4xb1hkkij7dgxlsv6nrgbvcy77";
  verifyCargoDeps = true;
}
