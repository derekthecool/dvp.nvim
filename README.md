# Derek's nVim Plugin (DVP)

I am using the neovim boilerplate starter from
[s1n7ax](https://github.com/s1n7ax/neovim-lua-plugin-boilerplate).

## Implemented Functions

| Function Name | Purpose                                                              |
|---------------|----------------------------------------------------------------------|
| comma_count   | Count the commas on a line and print the result                      |
| bit_flip      | Flip a binary bit with ease. Run command on a 0 or a 1 to invert it. |

## Ideas For New Features

* Virtual Text like this `:lua vim.api.nvim_buf_set_virtual_text(0, 51, 6, {{'🐄 '.."Derek is nice", 'Error'}},{})`
* Use virtual text to display decimal, hexadecimal, octal, and binary on the
  side of the window.

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
