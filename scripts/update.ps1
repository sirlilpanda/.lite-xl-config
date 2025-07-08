echo "updating lite-xl with sirlilpandas config"

# gets the theme and both language syntaxes
lpm repo update

# installs all the plugins i normally used font in plugins.txt
ForEach ($line in (Invoke-WebRequest https://raw.githubusercontent.com/sirlilpanda/.lite-xl-config/refs/heads/main/plugins.txt | Select-Object -Expand Content).split()){ lpm install $line}
lpm upgrade

# updates the current user module with my init.lua 
# this will save your current lua file to a init_old.lua just encase you still need it
cp $HOME\.config\lite-xl\init.lua $HOME\.config\lite-xl\init_old.lua

# [TODO] i will need to work out how to do the combining here
# WARNING THIS WILL OVERWRITE YOUR init.lua
(Invoke-WebRequest https://raw.githubusercontent.com/sirlilpanda/.lite-xl-config/refs/heads/main/init.lua | Select-Object -Expand Content) > $HOME\.config\lite-xl\init.lua


