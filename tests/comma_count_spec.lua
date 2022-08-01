describe('comma_count tests', function()
  it('Can be required', function()
    local require_test = require('dvp').comma_count
  end)

  it('Comma count', function()
    vim.api.nvim_buf_set_lines(0, 0, -1, 0, { '1,2,3,4,5' })
    local comma_count = require('dvp').comma_count()

    assert.are.same(comma_count, 4)
  end)
end)
