{
  pkgs,
  ...
}: {
  home.packages = [pkgs.gh];
  programs.gh = {
    enable = true;
    settings = {
        git_protocol = "ssh";
    };
  };
  programs.git = {
    enable = true;
    userName = "Ramprakash333";
    userEmail = "xxxx";
  };
}