# sirlilpandas config

This is my standard config, it uses gruvbox theme in `panda_box.lua` and has two syntaxes for c and cpp in 
`panda_language_c` and `panda_language_cpp` respectively. Below are the commands used to install this config
on a new system, these will also installs addtional plugins found in plugins.txt including the ones defined
in this repo.

your old `init.lua` will be saved to a `init.lua` in the `$HOME/.config/lite-xl/` dir.

![alt text](ref.png)

## requirements to install

- [`lite-xl`](https://lite-xl.com/)
- [`lpm`](https://github.com/lite-xl/lite-xl-plugin-manager)

## how to install:

installing and updating is as easy as running one command

### *nix

```sh
# to install
$ cat <(curl -s https://raw.githubusercontent.com/sirlilpanda/.lite-xl-config/refs/heads/main/scripts/install.sh) | bash

# to update
$ cat <(curl -s https://raw.githubusercontent.com/sirlilpanda/.lite-xl-config/refs/heads/main/scripts/update.sh) | bash

```

### windows

```ps1

# to install
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://raw.githubusercontent.com/sirlilpanda/.lite-xl-config/refs/heads/main/scripts/install.ps1 | Invoke-Expression

# to update
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://raw.githubusercontent.com/sirlilpanda/.lite-xl-config/refs/heads/main/scripts/update.ps1 | Invoke-Expression

```

# TODO
- work out merging file togeather so it doesnt full overwrite people own settings
- get around to working it out on mac (i dont use a mac that often)
