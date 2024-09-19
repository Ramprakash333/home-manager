{
    pkgs,
    ...
}: {
    imports = [
        ./git.nix
        ./starShip.nix
        ./zsh.nix
        ./lazygit.nix
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
        fzf.enable = true;
        bat.enable = true;
        btop.enable = true;
    };
}