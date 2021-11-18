local function virtualtext_number_converter()
    -- Get a number on a line and convert to decimal
    local originalNumber = 1234

    -- Convert to each number format
    local decimal_number = string.format("%d", originalNumber)
    local hex_number = string.format("%X", originalNumber)
    local octal_number = string.format("%o", originalNumber)

    -- Display as virtual text
    -- (Blue FG text) Decimal  (Orange FG text) Hexadecimal  (Green FG text) Octal
end

return virtualtext_number_converter


    -- local originalNumber = 1234

    -- text = "asht 45 this is words 888 0x34 11 0234 0b110111"
    -- -- originalNumber = string.match(text, "%d+")
    -- originalNumber = string.find(text, "%d+")

    -- for s,n in text:gmatch("0?x?b?%d+") do
    --     number_prefix = s:sub(0,2)
    --     print(number_prefix)
    --     print(s)
    -- end

    -- -- Convert to each number format
    -- local decimal_number = string.format("%d", originalNumber)
    -- local hex_number = string.format("%X", originalNumber)
    -- local octal_number = string.format("%o", originalNumber)
    -- print(decimal_number)
    -- print(hex_number)
    -- print(octal_number)

    -- -- vim.api.nvim_buf_set_virtual_text(0, 51, 6, {{'🐄 '.."Derek is nice", 'Error'}},{})
