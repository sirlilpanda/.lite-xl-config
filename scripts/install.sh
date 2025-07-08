echo "installing sirlilpandas config in to lite-xl"

# gets the theme and both language syntaxes
lpm repo add https://github.com/sirlilpanda/.lite-xl-config:main

# installs all the plugins i normally used font in plugins.txt
lpm install `(curl https://raw.githubusercontent.com/sirlilpanda/.lite-xl-config/refs/heads/main/plugins.txt)`

# updates the current user module with my init.lua 
cp $HOME/.config/lite-xl/init.lu/ $HOME/.config/lit/-xl/init_old.lua

# WARNING THIS WILL OVERWRITE YOUR init.lua
curl https://raw.githubusercontent.com/sirlilpanda/.lite-xl-config/refs/heads/main/init.lua > $HOME/.config/lite-xl/init.lua
