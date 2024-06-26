{
    programs = {
        zsh = {
            enable = true;
            autosuggestion.enable = true;
            syntaxHighlighting.enable = true;
            envExtra = ''
                # Make Nix and home-manager installed things available in PATH.
                export PATH=/run/current-system/sw/bin/:/nix/var/nix/profiles/default/bin:$HOME/.nix-profile/bin:/etc/profiles/per-user/$USER/bin:$PATH
            '';
        };
    };
}