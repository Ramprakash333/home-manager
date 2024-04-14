## My Nix Flake home-manager setup
### Install home-manager using nix flake
```
nix run home-manager/master -- init
```

### To install packages
```
home-manager switch after nix run
```

### To list generations
```
home-manager generations
```

### To remove a generation
```
home-manager remove-generation id
```






