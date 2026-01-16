{ lib, rustPlatform, fetchCrate, rust-bin }:
rustPlatform.buildRustPackage rec {
  pname = "wasm-server-runner";
  version = "1.0.1";

  src = fetchCrate {
    inherit version pname;
    hash = "sha256-3DrbhmlKRUm2qj8wyQl5wBG2dbd7RUPXm/hPNt6txnk=";
  };

  nativeBuildInputs = [
    rust-bin.stable.latest.minimal
  ];

  cargoHash = "sha256-CBIqRIdYNFg1SP6Km4ypO0NhJGkQuxZrD1zOcRhUDdk=";

  meta = with lib; {
    description = "WASM Server runner";
    homepage = "https://crates.io/crates/wasm-server-runner";
    license = licenses.mit;
    maintainers = with maintainers; [ polygon ];
  };
}
