local comma_count = require('dvp.comma_count')
local bit_flip = require('dvp.bit_flip')

-- Return multiple functions like in this example
-- https://www.2n.pl/blog/how-to-write-neovim-plugins-in-lua
return {
	comma_count = comma_count,
	bit_flip = bit_flip
}
