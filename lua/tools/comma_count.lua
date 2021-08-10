local function comma_count()
    local currentLine = vim.api.nvim_get_current_line()
    local commaCount = select(2, string.gsub(currentLine, ",", ","))
    print("Commas found: " .. commaCount)
end

return comma_count
