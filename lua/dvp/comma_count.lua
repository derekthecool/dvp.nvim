local function comma_count()
  local currentLine = vim.api.nvim_get_current_line()
  local total_commas_found = select(2, string.gsub(currentLine, ',', ','))
  print("Commas found: " .. total_commas_found)
  return total_commas_found
end

return comma_count
