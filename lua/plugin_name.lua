-- main module file
local module = require("plugin_name.module")

local M = {}
local config = {
  -- default config
  opt = "Hello!",
}

-- setup is the public method to setup your plugin
M.setup = function(args)
  -- you can define your setup function here. Usually configurations can be merged, accepting outside params and
  -- you can also put some validation here for those.
  config = vim.tbl_deep_extend("keep", args, config)
end

-- "hello" is a public method for the plugin
M.hello = function()
  module.my_first_function(config.opt)
end

return M
