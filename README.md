# sirlilpandas config

## installing existing plugins
to install plugins i use lpm but who says you cant just drag a drop in another if you wanted

### *.nix
```bash

$ lpm install `<plugins.txt`

```

### windows
```ps

> ForEach ($line in Get-Content plugins.txt){ lpm install $line}

```

## installing custom ones

```bash

$ lpm install "ill work this out later"

```
