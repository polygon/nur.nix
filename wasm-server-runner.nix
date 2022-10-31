{ lib, rustPlatform, fetchCrate, rust-bin }:
rustPlatform.buildRustPackage rec {
  pname = "wasm-server-runner";
  version = "0.4.0";

  src = fetchCrate {
    inherit version pname;
    sha256 = "sha256-u0464kCAqXEG5BuBgw20L5HF1Y6Rpba4OehkQ2vzUT0=";
  };

  nativeBuildInputs = [
    rust-bin.beta.latest.minimal
  ];

  cargoSha256 = "sha256-VioGZSzxkePnp+S6R6EzqOcH9VfIa/zKTbjANiF4LZ8=";

  meta = with lib; {
    description = "Nix code formatter for nixpkgs";
    homepage = "https://nix-community.github.io/nixpkgs-fmt";
    license = licenses.asl20;
    maintainers = with maintainers; [ zimbatm ];
  };
}
