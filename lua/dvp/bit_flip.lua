local function bit_flip()
    local get_cursor_position = vim.api.nvim_win_get_cursor(0)
    local cursor_column = get_cursor_position[2] + 1
    local line = vim.api.nvim_get_current_line()
    local char_under_cursor = line:sub(cursor_column, cursor_column)
    local row = get_cursor_position[1] - 1
    local col = tonumber(cursor_column) - 1

    print(char_under_cursor)
    if char_under_cursor == "0" then
        print("Found a zero, flipping the bit to one")
        vim.api.nvim_buf_set_text(0,row,col,row,col + 1,{"1"})

        -- nvim_put is good at putting text but not replacing it
        -- vim.api.nvim_put({"1"},"c",false,false)
    elseif char_under_cursor == "1" then
        print("Found a one, flipping the bit to zero")
        vim.api.nvim_buf_set_text(0,row,col,row,col + 1,{"0"})
    end
end

return bit_flip
