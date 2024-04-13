{
    pkgs,
    ...
}: {
    imports = [
        ./git.nix
        ./starShip.nix
        ./zsh.nix
    ];
     nix.gc = {
        automatic = true;
        frequency = "weekly";
        options = "--delete-older-than 1w";
    };
    programs = {
        direnv = {
            enable = true;
            nix-direnv.enable = true;
        };
    };
    home.packages = with pkgs; [htop];
}