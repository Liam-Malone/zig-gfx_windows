{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs,... }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forEachSupportedSystem = f: nixpkgs.lib.genAttrs supportedSystems (system: f {
        pkgs = import nixpkgs { inherit system; };
      });
    in
    {
      devShells = forEachSupportedSystem({ pkgs }: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            gdb
            lldb
            mesa
            shaderc
            valgrind
            vkdisplayinfo
            vulkan-extension-layer
            vulkan-loader
            vulkan-tools
            wine64
            zig
          ];
          buildInputs = with pkgs; [
            shaderc
            zig
          ];
          shellHook = ''
            alias zig14='$HOME/personal/zig/zig14/zig'
          '';
        };
      });
    };
}
