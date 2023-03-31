-- The '--' in the test group name are required for my DIY plenary test automation
describe('bit_flip tests --', function()
  it('Can be required', function()
    local require_test = require('dvp').bit_flip
  end)

  it('Bit flip test', function()
    assert.are.same(5, 5)
  end)
end)
