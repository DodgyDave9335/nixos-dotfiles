{
  description = "Machine specific configuration flake.";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    agenix = {
	url = "github:ryantm/agenix";
	inputs.nixpkgs.follows = "nixpkgs";
	inputs.darwin.follows = "";
    };

    hyprland = {
      url = "github:hyprwm/hyprland";
    };
    
    eriixvim = {
      url = "github:erictossell/eriixvim";
    };
  };
  
  outputs = { self, nixpkgs, ... } @ attrs: { 

    nixosConfigurations = {

    };#configurations

    templates.default = {
      path = ./.;
      description = "The default template for this flake";
    };#templates
   
  };
}
