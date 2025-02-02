# Zen Browser

This is a flake for the Zen browser.

```nix
#flake.nix
inputs = {
  zen-browser.url = "github:EthanJ-Brady/zen-browser-flake";
  ...
}
```

## Packages

```nix
inputs.zen-browser.packages."${system}".zen
```
