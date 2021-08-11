# Derek's nVim Plugin (DVP)

I am using the neovim boilerplate starter from
[s1n7ax](https://github.com/s1n7ax/neovim-lua-plugin-boilerplate).

## Implemented Functions


| Function Name | Purpose                                         |
|---------------|-------------------------------------------------|
| comma_count   | Count the commas on a line and print the result |

## neovim-lua-plugin-boilerplate

I forget the structure of a `neovim` plugin every single time. So I created the
boilerplate to make it easier to get started writing `neovim` plugin.

[YouTube video](https://youtu.be/6ch28A_YICQ)

### How to use

* clone the project `git clone https://github.com/s1n7ax/neovim-lua-plugin-boilerplate`
* go to the project folder `cd neovim-lua-plugin-boilerplate`
* start editing `nvim --cmd "set rtp+=."`
* reference the dev configurations `:luafile dev/init.lua`
* run the greetings.greet() function using `,w` keybind
