
echo "updating lite-xl"

# gets the theme and both language syntaxes
lpm repo update

# installs all the plugins i normally used font in plugins.txt
lpm install `(curl https://raw.githubusercontent.com/sirlilpanda/.lite-xl-config/refs/heads/main/plugins.txt)`
lpm upgrade

# updates the current user module with my init.lua 
cp $HOME/.config/lite-xl/init.lua $HOME/.config/lite-xl/init_old.lua

# this will combine your current config file with the new file
awk 'NR==FNR' $HOME/.config/lite-xl/init.lua <(echo curl https://raw.githubusercontent.com/sirlilpanda/.lite-xl-config/refs/heads/main/init.lua) > $HOME/.config/lite-xl/init.lua
