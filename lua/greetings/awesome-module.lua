local function greet()
    num = 2 * 234234
    print(num)
end

local api = vim.api
local buf, win1, win2

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
  local window1_y = math.ceil(3 *(height - win_height) / 4 - 1)
  local window1_x = math.ceil((width - win_width) / 4)

  local window2_y = math.ceil(1 *(height - win_height) / 4 - 1)
  local window2_x = math.ceil((width - win_width) / 4)

  local window3_y = math.ceil(1 *(height - win_height) / 4 - 1)
  local window3_x = math.ceil(3 *(width - win_width) / 4)

  local window4_y = math.ceil(3 *(height - win_height) / 4 - 1)
  local window4_x = math.ceil(3 *(width - win_width) / 4)

  -- set some options
  local opts1 = {
    relative = "editor",
    width = win_width,
    height = win_height,
    row = window1_y,
    col = window1_x
  }

  local opts2 = {
    relative = "editor",
    width = win_width,
    height = win_height,
    row = window2_y,
    col = window2_x
  }

  local opts3 = {
    relative = "editor",
    width = win_width,
    height = win_height,
    row = window3_y,
    col = window3_x
  }

  local opts4 = {
    relative = "editor",
    width = win_width,
    height = win_height,
    row = window4_y,
    col = window4_x
  }

  -- and finally create it with buffer attached
  win1 = api.nvim_open_win(buf, true, opts1)
  win2 = api.nvim_open_win(buf, true, opts2)
  win3 = api.nvim_open_win(buf, true, opts3)
  win4 = api.nvim_open_win(buf, true, opts4)
end

-- return greet
return open_window
