# mvim
My personal vim configuration

## Prerequirement

```sh
sudo apt install curl make unzip vim
```

* curl
* make
* unzip
* nodejs npm # (optional) for ruff and pydocstring

## Install
Just run `./install.sh`

For ruff and pydocstring, do this as well: `sudo npm install -g bash-language-server`

## Tab Autocomplete bashrc option

```
# If there are multiple matches for completion, Tab should cycle through them
bind 'TAB:menu-complete'
# And Shift-Tab should cycle backwards
bind '"\e[Z": menu-complete-backward'

# Display a list of the matching files
bind "set show-all-if-ambiguous on"

# Perform partial (common) completion on the first Tab press, only start
# cycling full results on the second Tab press (from bash version 5)
bind "set menu-complete-display-prefix on"
```

