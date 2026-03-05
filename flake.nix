{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
    bootstrap.url = "path:..";
  };

  outputs =
    { nixpkgs, bootstrap, ... }:
    assert bootstrap.lib.assertBootstrap {
      inherit nixpkgs;
      paths = "bootstrap-lix:{\"aarch64-darwin\":\"/nix/store/529wz1y539fm5rbpb1a3rz1vy36bh8g5-lix-static-arm64-apple-darwin-2.94.0\",\"aarch64-linux\":\"/nix/store/mj5kk8rvnvbx19n34xlqpg0xifmgyjfq-lix-static-aarch64-unknown-linux-musl-2.94.0\",\"x86_64-darwin\":\"/nix/store/a61pgjff2spksngs4kp5fq9hm5s1zda8-lix-static-x86_64-apple-darwin-2.94.0\",\"x86_64-linux\":\"/nix/store/l130kyf4a7dzq7asfavxwjr5wx9qsd3k-lix-static-x86_64-unknown-linux-musl-2.94.0\"}";
    };
    {
      someOutput = null;
    };
}
