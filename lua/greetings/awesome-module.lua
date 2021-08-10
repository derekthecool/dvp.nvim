-- Function to create 4 floating windows
local api = vim.api
local buf, win1

local function open_window()
  buf = api.nvim_create_buf(false, true) -- create new emtpy buffer

  api.nvim_buf_set_option(buf, 'bufhidden', 'wipe')

  -- get dimensions
  local width = api.nvim_get_option("columns")
  local height = api.nvim_get_option("lines")

  -- calculate our floating window size
  local win_height = math.ceil(height * 0.2)
  local win_width = math.ceil(width * 0.2)

  -- and its starting position
  local window_y = math.ceil(3 *(height - win_height) / 4 - 1)
  local window_x = math.ceil((width - win_width) / 4)

  -- set some options
  local opts = {
    relative = "editor",
    width = win_width,
    height = win_height,
    row = window_y,
    col = window_x
  }

  -- and finally create it with buffer attached
  win1 = api.nvim_open_win(buf, true, opts)
end

-- return greet
return open_window
