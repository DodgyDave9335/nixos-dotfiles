{
  description = "Machine specific configuration flake.";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    };
  };
  outputs = { self, nixpkgs, ... } @ attrs: { 

    nixosConfigurations = { 
       hellmachine = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {
            username = "mashiro";
            hostname = "hellmachine";
            displayConfig = "desktop";
            nvidia_bool = "enabled";
        } // attrs;
        modules = [
          ./.
        ];
      };#hellmachine

    };#configurations

    templates.default = {
      path = ./.;
      description = "The default template for this flake";
    };#templates
 };
}
